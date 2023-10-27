import 'package:flutter/material.dart';

class CustomTextMinTitle extends StatelessWidget {
  const CustomTextMinTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
    );
  }
}
