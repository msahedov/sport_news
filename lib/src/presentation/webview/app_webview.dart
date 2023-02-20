import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class AppWebView extends StatefulWidget {
  final String url;
  const AppWebView({super.key, required this.url});

  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  late final WebViewController _controller;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller = WebViewController.fromPlatformCreationParams(params);
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      key: Key('app_webview_pop_button'),
      onWillPop: _onWillPopScope,
      child: FutureBuilder<SharedPreferences>(
          future: _prefs,
          builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
            _saveUrl(snapshot.data);
            if (snapshot.connectionState == ConnectionState.none) {
              return Container();
            } else {
              return WebViewWidget(controller: _controller);
            }
          }),
    );
  }

  _saveUrl(SharedPreferences? preferences) async {
    var urls = preferences?.getStringList('urls');
    urls?.add(widget.url);
    preferences
        ?.setStringList('urls', urls ?? [])
        .then((value) => value ? print("Succesfully saved!") : print("Error"));
  }

  Future<bool> _onWillPopScope() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
    } else {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(content: Text('No back history item')),
        );
    }
    return false;
  }
}
