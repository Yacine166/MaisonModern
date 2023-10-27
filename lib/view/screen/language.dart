import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/routes.dart';
import 'package:maison_moderne/core/localization/changelocal.dart';
import 'package:maison_moderne/view/widget/language/custom_button_lang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1'.tr,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 60),
              CustomButtonLang(
                textButton: 'En',
                onPressed: () => {
                  controller.onChange('en'),
                  Get.offNamed(AppRoutes.onBoarding)
                },
              ),
              CustomButtonLang(
                textButton: 'Fr',
                onPressed: () => {
                  controller.onChange('fr'),
                  Get.offNamed(AppRoutes.onBoarding)
                },
              )
            ],
          )),
    );
  }
}
