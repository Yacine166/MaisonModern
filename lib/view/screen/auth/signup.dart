import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/controller/auth/signup_controller.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/core/functions/validinput.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_form.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_login_signup.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_min_title.dart';

import '../../widget/auth/custom_button.dart';
import '../../widget/auth/custom_text_title.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: controller.formstate,
                child: ListView(children: [
                  const SizedBox(height: 10),
                  const CustomTextTitle(title: 'Create account'),
                  const SizedBox(height: 30),
                  const CustomTextMinTitle(
                      title: "Sing Up with your email and password "),
                  const SizedBox(height: 70),
                  CustomTextForm(
                    valid: (val) {
                      return validinput(val!, 5, 50, "username");
                    },
                    myController: controller.usernameController,
                    textForm: 'Username',
                    textHint: 'Enter Your Username',
                    iconData: Icons.person_outline,
                    boolObscureText: false,
                  ),
                  const SizedBox(height: 30),
                  CustomTextForm(
                    valid: (val) {
                      return validinput(val!, 5, 50, "email");
                    },
                    myController: controller.emailController,
                    textForm: 'Email',
                    textHint: 'Enter Your Email',
                    iconData: Icons.email_outlined,
                    boolObscureText: false,
                  ),
                  const SizedBox(height: 30),
                  CustomTextForm(
                    valid: (val) {
                      return validinput(val!, 5, 50, "phonenumber");
                    },
                    myController: controller.phoneController,
                    textForm: 'Phone',
                    textHint: 'Enter Your Phone',
                    iconData: Icons.phone_android_outlined,
                    boolObscureText: false,
                  ),
                  const SizedBox(height: 30),
                  CustomTextForm(
                      valid: (val) {
                        return validinput(val!, 5, 50, "password");
                      },
                      myController: controller.passwordController,
                      textForm: 'Password',
                      textHint: 'Enter Your Password',
                      iconData: Icons.lock_outline,
                      boolObscureText: true),
                ]),
              ),
            ),
            CustomButtonAuth(
              text: "Create",
              onPressed: () {
                controller.signUp();
              },
            ),
            // const SizedBox(height: 30),
            TextLoginSingUp(
              textQues: "Did you have account? ",
              textGo: 'Sign In',
              onTap: () {
                controller.goToLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
