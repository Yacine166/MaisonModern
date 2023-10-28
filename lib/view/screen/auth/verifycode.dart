import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';

import '../../../controller/auth/verifycode_controller.dart';
import '../../widget/auth/custom_text_title.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorwhite,
        elevation: 0.0,
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          'Check code',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: ListView(children: [
          const SizedBox(height: 30),
          const CustomTextTitle(title: 'Verify Code'),
          const SizedBox(height: 30),
          const CustomTextMinTitle(
              title: "Please enter The Digit Code send To email@gmail.com "),
          const SizedBox(height: 70),
          OtpTextField(
            filled: true,
            enabledBorderColor: const Color.fromARGB(161, 72, 72, 72),
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(15.0),
            borderWidth: 1.0,
            showFieldAsBox: true,
            focusedBorderColor:
                AppColor.colorGreen, // Set the border color when focused

            onCodeChanged: (String code) {
              // Handle validation or checks here
            },
            onSubmit: (String verificationCode) {
              controller.goToResetPassword();
            },
          ),
        ]),
      ),
    );
  }
}
