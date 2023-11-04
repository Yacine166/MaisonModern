import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/auth/successsignup_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_button.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.colorwhite,
          elevation: 0.0,
          foregroundColor: AppColor.primaryColor,
          centerTitle: true,
          title: Text(
            'Success Sign Up',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              const Icon(
                Icons.check_circle_outline,
                color: AppColor.colorGreen,
                size: 90.0,
              ),
              const SizedBox(height: 30.0),
              const CustomTextMinTitle(title: "Your Accunt Has Create "),
              const Spacer(),
              CustomButtonAuth(
                text: "Connect ",
                onPressed: () {
                  controller.goToLogin();
                },
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ));
  }
}
