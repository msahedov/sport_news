import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sport_news/src/presentation/home/home_page.dart';
import 'package:sport_news/src/presentation/webview/app_webview.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  String dat = await NewsApp.builder();
  runApp(MaterialApp(
      title: 'Sport News',
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      home: dat.isEmpty ? HomePage() : AppWebView(url: dat)));
}
