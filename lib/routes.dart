import 'package:flutter/material.dart';
import 'package:maison_moderne/core/constant/routes.dart';
import 'package:maison_moderne/view/screen/auth/login.dart';
import 'package:maison_moderne/view/screen/onbording.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onBoarding: (context) => const OnBording()
};
