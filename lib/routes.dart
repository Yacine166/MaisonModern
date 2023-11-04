import 'package:flutter/material.dart';
import 'package:maison_moderne/core/constant/routes.dart';
import 'package:maison_moderne/view/screen/auth/checkemail.dart';
import 'package:maison_moderne/view/screen/auth/forgetPassword/forgetpassword.dart';
import 'package:maison_moderne/view/screen/auth/forgetPassword/resetpassword.dart';
import 'package:maison_moderne/view/screen/auth/forgetPassword/success_resetpassword.dart';
import 'package:maison_moderne/view/screen/auth/forgetPassword/verifycode.dart';
import 'package:maison_moderne/view/screen/auth/login.dart';
import 'package:maison_moderne/view/screen/auth/signup.dart';
import 'package:maison_moderne/view/screen/auth/success_signup.dart';
import 'package:maison_moderne/view/screen/auth/verifycodesignup.dart';
import 'package:maison_moderne/view/screen/onbording.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signUp: (context) => const SignUp(),
  AppRoutes.forgetpassword: (context) => const ForgetPassword(),
  AppRoutes.resetpassword: (context) => const ResetPassword(),
  AppRoutes.verifycode: (context) => const VerifyCode(),
  AppRoutes.checkemail: (context) => const CheckEmail(),
  AppRoutes.successsignup: (context) => const SuccessSignUp(),
  AppRoutes.verifycodesignup: (context) => const VerifyCodeSignUp(),

  AppRoutes.successresetpassword: (context) => const SuccessResetPassword(),
  // On boarding
  AppRoutes.onBoarding: (context) => const OnBording(),
  // AppRoutes.test: (context) => const Test(),
};
