import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/onboarding_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/data/datasource/static/static.dart';

class CustomListGenOnBoarding extends StatelessWidget {
  const CustomListGenOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBordingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: controller.currentPage == index ? 20 : 10,
              height: 10.0,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: controller.currentPage == index
                    ? AppColor.primaryColor
                    : const Color.fromARGB(255, 150, 246, 135),
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
