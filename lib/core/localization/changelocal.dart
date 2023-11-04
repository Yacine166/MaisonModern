import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/apptheme.dart';
import 'package:maison_moderne/core/services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData apptheme = themeEnglish;

  onChange(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);

    apptheme = langcode == "en" ? themeEnglish : themeArabic;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? shardPreLang = myServices.sharedPreferences.getString('lang');
    if (shardPreLang == 'ar') {
      language = const Locale('ar');
      apptheme = themeArabic;
    } else if (shardPreLang == 'en') {
      language = const Locale('en');
      apptheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
