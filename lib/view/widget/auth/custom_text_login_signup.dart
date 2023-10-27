import 'package:flutter/material.dart';
import 'package:maison_moderne/core/constant/color.dart';

class TextLoginSingUp extends StatelessWidget {
  const TextLoginSingUp(
      {super.key,
      required this.textQues,
      required this.textGo,
      required this.onTap});
  final String textQues;
  final String textGo;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textQues,
          style: const TextStyle(
              fontSize: 17,
              color: AppColor.textGrey,
              fontWeight: FontWeight.w100),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            textGo,
            style: const TextStyle(
                fontSize: 17,
                color: AppColor.textGrey,
                fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
