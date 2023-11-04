import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/auth/forgetpassword_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_button.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_form.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';

import '../../../widget/auth/custom_text_title.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorwhite,
        elevation: 0.0,
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          'Forget Password',
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
                const CustomTextTitle(title: 'check your email '),
                const SizedBox(height: 30),
                const CustomTextMinTitle(
                    title: "Recover your password with checking your email "),
                const SizedBox(height: 70),
                CustomTextForm(
                  valid: (val) {},
                  myController: controller.emailController,
                  textForm: 'Email',
                  textHint: 'Enter Your Email',
                  iconData: Icons.email_outlined,
                  boolObscureText: false,
                ),
              ]),
            ),
            CustomButtonAuth(
              text: "Check",
              onPressed: () {
                controller.goToVerifyCode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
