import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/auth/checkemail_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_button.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_form.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_title.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.colorwhite,
        foregroundColor: AppColor.colorGreen,
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const CustomTextTitle(title: 'check your email '),
            const SizedBox(height: 30),
            const CustomTextMinTitle(title: "enter your email for confirem "),
            const SizedBox(height: 70),
            CustomTextForm(
              valid: (val) {},
              myController: controller.emailController,
              textForm: 'Email',
              textHint: 'Enter Your Email',
              iconData: Icons.email_outlined,
              boolObscureText: false,
            ),
            const Spacer(),
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
