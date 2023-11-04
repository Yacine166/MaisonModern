import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {super.key,
      required this.textForm,
      required this.textHint,
      this.myController,
      required this.iconData,
      required this.boolObscureText,
      required this.valid});
  final String textForm;
  final String? Function(String?) valid;
  final String textHint;
  final IconData iconData;
  final bool boolObscureText;
  final TextEditingController? myController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      obscureText: boolObscureText,
      controller: myController,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(iconData),
        hintStyle: const TextStyle(fontSize: 15),
        hintText: textHint,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(textForm),
        ),
      ),
    );
  }
}
