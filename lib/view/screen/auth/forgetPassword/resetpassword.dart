import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/auth/resetpassword_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_form.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';

import '../../../widget/auth/custom_button.dart';
import '../../../widget/auth/custom_text_title.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorwhite,
        elevation: 0.0,
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          'New Password',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          children: [
            Expanded(
              child: ListView(children: [
                const SizedBox(height: 30),
                const CustomTextTitle(title: 'Reset Password'),
                const SizedBox(height: 30),
                const CustomTextMinTitle(title: "Enter new password "),
                const SizedBox(height: 70),
                CustomTextForm(
                  valid: (val) {},
                  myController: controller.passwordController,
                  textForm: 'New Password',
                  textHint: 'Enter Your New Password',
                  iconData: Icons.lock_outline_rounded,
                  boolObscureText: false,
                ),
                const SizedBox(height: 30),
                CustomTextForm(
                  valid: (val) {},
                  myController: controller.repasswordController,
                  textForm: 'Password',
                  textHint: 'Enter Agin Your password',
                  iconData: Icons.lock_outline_rounded,
                  boolObscureText: false,
                ),
              ]),
            ),
            CustomButtonAuth(
              text: "Save ",
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
