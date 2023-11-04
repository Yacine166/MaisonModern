import 'package:get/get.dart';
import 'package:maison_moderne/core/constant/image_assets.dart';

import '../../model/onbording_model.dart';

List<OnBoardingModel> onBordingList = [
  OnBoardingModel(
      title: "2".tr,
      image: ImageAssets.onBoardingImageOne,
      body:
          "This is frist Exmple In this updated code\n, the List.generate function is wrapped with a Center widget,\n which centers its child horizontally. "),
  OnBoardingModel(
      title: "Choose Product 2",
      image: ImageAssets.onBoardingImageTow,
      body: "This is frist Exmple \n this is new line "),
  OnBoardingModel(
      title: "Choose Product 3",
      image: ImageAssets.onBoardingImageThree,
      body: "This is frist Exmple"),
  OnBoardingModel(
      title: "Choose Product 4",
      image: ImageAssets.onBoardingImageFour,
      body: "This is frist Exmple")
];
