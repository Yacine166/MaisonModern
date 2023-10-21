import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {super.key,
      required this.textForm,
      required this.textHint,
      required this.icon,
      this.myController});
  final String textForm;
  final String textHint;
  final IconData icon;
  final TextEditingController? myController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const Icon(Icons.email_outlined),
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
