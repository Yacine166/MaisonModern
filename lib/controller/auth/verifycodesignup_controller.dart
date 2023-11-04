import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/routes.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goToSuccessSignUp();
  checkCode();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifyCode;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successsignup);
  }
}
