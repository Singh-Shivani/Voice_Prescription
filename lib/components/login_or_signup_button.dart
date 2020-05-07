import 'package:flutter/material.dart';

class LoginOrSignUpButton extends StatelessWidget {
  LoginOrSignUpButton({@required this.inputText, @required this.onTap});
  final String inputText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: FloatingActionButton.extended(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.white,
        onPressed: onTap,
        label: Text(
          inputText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
