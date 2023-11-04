import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:maison_moderne/core/constant/color.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page Test"),
        ),
        body: OtpTextField(
          filled: true,
          enabledBorderColor: const Color.fromARGB(161, 72, 72, 72),
          fieldWidth: 50.0,
          borderRadius: BorderRadius.circular(15.0),
          borderWidth: 1.0,
          borderColor: Colors.red, // Set the default border color to red
          showFieldAsBox: true,
          focusedBorderColor:
              AppColor.colorGreen, // Set the border color when focused

          onCodeChanged: (String code) {
            // Handle validation or checks here
          },
          onSubmit: (String verificationCode) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
                );
              },
            );
          },
        ));
  }
}




/* ceate function for check length value and valide  username and email and phone 

// validator fourm text 
// (val ){
// 
// 
form for make key (controller.FormState)*/
