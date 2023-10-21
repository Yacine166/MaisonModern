import 'package:flutter/material.dart';
import 'package:maison_moderne/core/constant/color.dart';
import 'package:maison_moderne/view/widget/auth/custom_text_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(40),
        child: ListView(children: [
          const SizedBox(height: 30),
          Text(
            'Welcome Back',
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Text(
            'Sing in with your email and password OR continue with social media',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 70),
          const CustomTextForm(
            textForm: 'Email',
            textHint: 'Enter Your Email',
            icon: Icons.email_outlined,
          ),
          const SizedBox(height: 30),
          const CustomTextForm(
              textForm: 'Password',
              textHint: 'Enter Your Password',
              icon: Icons.lock_outline),
        ]),
      ),
    );
  }
}
