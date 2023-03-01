import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'src/app.dart';
import 'src/presentation/home/home_page.dart';
import 'src/presentation/webview/app_webview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NewsApp.initNotify();
  String dat = await NewsApp.builder();

  runApp(MaterialApp(
      title: 'Sport News',
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      home: dat.isEmpty ? HomePage() : AppWebView(url: dat)));
}
