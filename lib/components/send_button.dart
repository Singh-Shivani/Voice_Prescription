import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/screens/password_otp.dart';
import 'package:voiceprescriptionfe/screens/reset_password.dart';


class SendButton extends StatelessWidget {
  SendButton({@required this.inputText});
  final String inputText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      alignment: Alignment.center,
      child: FloatingActionButton.extended(
        elevation: 9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, Otp.id);
        },
        label: Text(
          inputText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  SubmitButton({@required this.inputText});
  final String inputText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      alignment: Alignment.center,
      child: FloatingActionButton.extended(
        elevation: 9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, Reset.id);
        },
        label: Text(
          inputText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
