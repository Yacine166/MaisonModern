import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/auth/signup_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_form.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_login_signup.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';

import '../../widget/auth/custom_button.dart';
import '../../widget/auth/custom_text_title.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorwhite,
        elevation: 0.0,
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          'Sing Up',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: ListView(children: [
          const SizedBox(height: 10),
          const CustomTextTitle(title: 'Create account'),
          const SizedBox(height: 30),
          const CustomTextMinTitle(
              title: "Sing Up with your email and password "),
          const SizedBox(height: 70),
          CustomTextForm(
            myController: controller.usernameController,
            textForm: 'Username',
            textHint: 'Enter Your Username',
            iconData: Icons.person_outline,
            boolObscureText: false,
          ),
          const SizedBox(height: 30),
          CustomTextForm(
            myController: controller.emailController,
            textForm: 'Email',
            textHint: 'Enter Your Email',
            iconData: Icons.email_outlined,
            boolObscureText: false,
          ),
          const SizedBox(height: 30),
          CustomTextForm(
            myController: controller.phoneController,
            textForm: 'Phone',
            textHint: 'Enter Your Phone',
            iconData: Icons.phone_android_outlined,
            boolObscureText: false,
          ),
          const SizedBox(height: 30),
          CustomTextForm(
              myController: controller.passwordController,
              textForm: 'Password',
              textHint: 'Enter Your Password',
              iconData: Icons.lock_outline,
              boolObscureText: true),
          CustomButtonAuth(
            text: "Sing Up",
            onPressed: () {},
          ),
          const SizedBox(height: 30),
          TextLoginSingUp(
            textQues: "Did you have account? ",
            textGo: 'Sing In',
            onTap: () {
              controller.goToLogin();
            },
          ),
        ]),
      ),
    );
  }
}
