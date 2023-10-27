import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/color.dart';
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
      theme: ThemeData(
        fontFamily: "Roboto",
        textTheme: const TextTheme(
            //title
            displayLarge: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            //body text
            bodyLarge: TextStyle(
              fontWeight: FontWeight.w500,
              height: 2,
              fontSize: 18,
              color: AppColor.textGrey,
            ),
            bodyMedium: TextStyle(
              fontWeight: FontWeight.w600,
              height: 2,
              fontSize: 20,
              color: Colors.black,
            ),
            //button
            labelLarge: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.colorGreen),
      ),
      home: const Login(),
      routes: routes,
    );
  }
}
