import 'package:flutter/material.dart';
import 'package:maison_moderne/core/constant/image_assets.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAssets.lock,
      height: 100,
    );
  }
}
