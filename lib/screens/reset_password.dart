import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/components/input_text_fields.dart';
import 'package:voiceprescriptionfe/components/cancel_button.dart';
import 'package:voiceprescriptionfe/components/send_button.dart';

class Reset extends StatelessWidget {
  static String id = 'resetpassword';

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
                //container is used to give top-padding to first test box
                padding: EdgeInsets.only(top: 175),

                //TODO 1: HOW TO SCROLL THIS CONTAINER WHEN KEYBOARDS ARE ACTIVE?

                child: InputTextField(
                  inputText: 'Password',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InputTextField(
                inputText: 'Re-Enter Password',
              ),
              SizedBox(
                height: 20,
              ),
              SubmitButton(
                // In widgets/login_or_signup_button.dart
                inputText: 'SUBMIT',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 98),
                child: Text(
                  'Password should contain:\n 1. Minimum 8 character\n 2. Uppercase characters\n 3. Lowercase characters\n 4. Special Characters\n 5. Numbers',
                ),
              ),
              CancelButton(), // In widgets/forget_password_buttons.dart
            ],
          ),
        ),
      ),
    );
  }
}
