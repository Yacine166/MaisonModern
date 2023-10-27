import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/auth/login_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_form.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_login_signup.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';
import 'package:maison_moderne/view/widget/auth/login_image.dart';

import '../../widget/auth/custom_button.dart';
import '../../widget/auth/custom_text_title.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorwhite,
        elevation: 0.0,
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          'Sing In',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: ListView(children: [
          const LoginImage(),
          const SizedBox(height: 30),
          const CustomTextTitle(title: 'Welcome Back'),
          const SizedBox(height: 30),
          const CustomTextMinTitle(
              title:
                  "Sing in with your email and password OR continue with social media"),
          const SizedBox(height: 70),
          CustomTextForm(
            myController: controller.emailController,
            textForm: 'Email',
            textHint: 'Enter Your Email',
            iconData: Icons.email_outlined,
            boolObscureText: false,
          ),
          const SizedBox(height: 30),
          CustomTextForm(
              myController: controller.passwordController,
              textForm: 'Password',
              textHint: 'Enter Your Password',
              iconData: Icons.lock_outline,
              boolObscureText: true),
          InkWell(
            onTap: controller.goToForgetpassword,
            child: const Text(
              "Forget Password",
              style: TextStyle(
                  fontSize: 17,
                  color: AppColor.textGrey,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.end,
            ),
          ),
          CustomButtonAuth(
            text: "Sing In",
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          TextLoginSingUp(
            onTap: () {
              controller.goToSignup();
            },
            textQues: "Don't have an account? ",
            textGo: "Sign Up",
          ),
        ]),
      ),
    );
  }
}
