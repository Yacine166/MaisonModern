import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/onboarding_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/onBording/custom_button.dart';
import 'package:maison_moderne/view/widget/onBording/custom_list_gen.dart';
import 'package:maison_moderne/view/widget/onBording/custom_slider.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.colorwhite,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomListGenOnBoarding(),
                    Spacer(
                      flex: 1,
                    ),
                    CustomButtonOnBoarding(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
