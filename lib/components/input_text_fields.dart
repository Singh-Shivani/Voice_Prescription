import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  InputTextField({this.inputText});

  final String inputText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          ),
        ),
        filled: true,
        hintStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
//          fontStyle: FontStyle.italic,
          fontFamily: 'SourceSansPro',
        ),
        hintText: inputText,
        fillColor: Color.fromRGBO(235, 235, 235, 1),
        contentPadding: EdgeInsets.only(left: 25),
      ),
    );
  }
}
