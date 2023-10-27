import 'package:flutter/material.dart';
import 'package:maison_moderne/core/constant/routes.dart';
import 'package:maison_moderne/view/screen/auth/forgetpassword.dart';
import 'package:maison_moderne/view/screen/auth/login.dart';
import 'package:maison_moderne/view/screen/auth/resetpassword.dart';
import 'package:maison_moderne/view/screen/auth/singup.dart';
import 'package:maison_moderne/view/screen/auth/verifycode.dart';
import 'package:maison_moderne/view/screen/onbording.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signUp: (context) => const SingUp(),
  AppRoutes.forgetpassword: (context) => const ForgetPassword(),
  AppRoutes.resetpassword: (context) => const ResetPassword(),
  AppRoutes.verifycode: (context) => const VerifyCode(),
  // On boarding
  AppRoutes.onBoarding: (context) => const OnBording()
};
