import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/routes.dart';

abstract class CheckEmailController extends GetxController {
  goToVerifyCode();
  checkemail();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController emailController;

  @override
  checkemail() {}

  @override
  goToVerifyCode() {
    Get.offAllNamed(AppRoutes.verifycodesignup);
  }

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
}
