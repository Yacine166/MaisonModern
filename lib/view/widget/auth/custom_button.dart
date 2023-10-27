import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 40),
      child: MaterialButton(
        textColor: Colors.white,
        splashColor: const Color.fromARGB(70, 49, 175, 146),
        elevation: 10.0,
        color: const Color.fromARGB(255, 49, 175, 146),
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          text,
          // textAlign: TextAlign.right,
          // style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
