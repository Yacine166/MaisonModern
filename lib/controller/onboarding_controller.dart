import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/routes.dart';
import 'package:maison_moderne/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  void nextPage();
  void onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  nextPage() {
    currentPage++;
    if (currentPage > onBordingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
