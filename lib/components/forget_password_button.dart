import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/screens/forgot_password.dart';

class ForgetPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          print('forget password link pressed');
          Navigator.pushNamed(context, ForgotPassword.id);
        },
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.red,
            letterSpacing: 0.5,

          ),
        ),
      ),
    );
  }
}
