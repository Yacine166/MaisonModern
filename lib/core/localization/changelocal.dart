import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  onChange(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? shardPreLang = myServices.sharedPreferences.getString('lang');
    if (shardPreLang == 'fr') {
      language = const Locale('fr');
    } else if (shardPreLang == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
