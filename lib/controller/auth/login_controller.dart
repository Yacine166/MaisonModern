import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgetpassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  login() {}

  @override
  goToSignup() {
    Get.offNamed(AppRoutes.signUp);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToForgetpassword() {
    Get.toNamed(AppRoutes.forgetpassword);
  }
}
