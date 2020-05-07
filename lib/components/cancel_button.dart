import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () {
//          print('forget password link pressed');
          Navigator.pop(context);
        },
        child: Text(
          'CANCEL',
          style: TextStyle(
            color: Colors.red,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
