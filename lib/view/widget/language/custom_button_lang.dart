import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  const CustomButtonLang({super.key, required this.textButton, this.onPressed});
  final String textButton;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,

        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        child: Text(
          textButton,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
