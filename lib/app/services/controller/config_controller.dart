import 'package:flutter/material.dart';
import 'package:foster_respite/app/services/base/preferences.dart';
import 'package:foster_respite/app/utils/logger.dart';
import 'package:get/get.dart';

class ConfigController extends GetxController {
  static ConfigController get to => Get.find();


  bool isLightTheme = true;

    void toggleTheme() {
    isLightTheme = !isLightTheme;
    Preferences.isLight = isLightTheme;
    kLogger.e(Preferences.isLight);
    Get.changeThemeMode(isLightTheme ? ThemeMode.light : ThemeMode.dark);
  }

    @override
  void onReady() {
    isLightTheme = Preferences.isLight;
    super.onReady();
  }
}
