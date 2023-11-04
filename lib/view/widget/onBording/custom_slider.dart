import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/onboarding_controller.dart';
import 'package:maison_moderne/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) => controller.onPageChange(value),
      itemCount: onBordingList.length,
      itemBuilder: (context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            onBordingList[index].title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            onBordingList[index].image,
            width: Get.width / 1.8,
            height: Get.height / 3,
            fit: BoxFit.fill,
          ),
          const Spacer(),
          Text(
            onBordingList[index].body,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
