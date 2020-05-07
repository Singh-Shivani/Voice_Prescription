import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  InputTextField({@required this.inputText, this.obscureText});

  final String inputText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
//      obscureText: obscureText,
      autofocus: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
          borderSide: BorderSide(color: Colors.black, width: 2.0),
        ),
        filled: true,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'SourceSansPro',
        ),
        hintText: inputText,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.only(left: 25),
      ),
    );
  }
}
