import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  goToVerifyCode();
  checkemail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController emailController;

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  checkemail() {}

  @override
  goToVerifyCode() {}
}
