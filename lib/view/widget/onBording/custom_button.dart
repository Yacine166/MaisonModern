import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/onboarding_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: MaterialButton(
        onPressed: () {
          controller.nextPage();
        },
        padding: const EdgeInsets.symmetric(horizontal: 100),
        color: AppColor.colorGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          "Continue",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
