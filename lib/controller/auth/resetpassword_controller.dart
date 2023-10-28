import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  goToSuccessResetPassword();
  resetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController passwordController;
  late TextEditingController repasswordController;

  @override
  void onInit() {
    passwordController = TextEditingController();
    repasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    repasswordController.dispose();
    super.dispose();
  }

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successresetpassword);
  }
}
