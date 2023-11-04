import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/localization/changelocal.dart';
import 'package:maison_moderne/core/localization/translation.dart';
import 'package:maison_moderne/core/services/services.dart';
import 'package:maison_moderne/routes.dart';
import 'package:maison_moderne/view/screen/auth/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  Get.put(MyServices());
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.apptheme,
      home: const Login(),
      routes: routes,
    );
  }
}
