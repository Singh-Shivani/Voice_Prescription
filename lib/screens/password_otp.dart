import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/components/input_text_fields.dart';
import 'package:voiceprescriptionfe/components/send_button.dart';
import 'package:voiceprescriptionfe/components/cancel_button.dart';

class Otp extends StatelessWidget {
  static String id = 'otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/Reset_bg.png'),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 170),
                child: Text(
                  'Please enter the OTP recieved in the email to reset your password',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                //container is used to give top-padding to first test box
                padding: EdgeInsets.only(top: 60),
                //TODO 1: HOW TO SCROLL THIS CONTAINER WHEN KEYBOARDS ARE ACTIVE?

                child: InputTextField(
                  inputText: 'OTP',
                ),
              ),

              SizedBox(
                height: 40,
              ),
              SubmitButton(
                // In widgets/login_or_signup_button.dart
                inputText: 'SUBMIT',
              ),
              CancelButton(), // In widgets/forget_password_buttons.dart

            ],
          ),
        ),
      ),
    );
  }
}
