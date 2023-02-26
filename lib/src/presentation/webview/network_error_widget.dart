import 'package:flutter/material.dart';
import 'package:sport_news/src/core/theme/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NetwotkErrorWidget extends StatelessWidget {
  const NetwotkErrorWidget({super.key, required this.controller});

  final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No network connection",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Text("Please check your network settings \n and try again",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 40),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: appColorBlack,
                ),
                icon: const Icon(Icons.refresh, color: appColorWhite),
                label: Text("Try again",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: appColorWhite)),
                onPressed: () {
                  controller.reload();
                }),
          ],
        ),
      ),
    );
  }
}