import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword();
  checkCode();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifyCode;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetpassword);
  }

  @override
  checkCode() {}
}
