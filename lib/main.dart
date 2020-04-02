import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.asset('images/3568983.png'),
                  alignment: Alignment(0, 1),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.14),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                    padding: EdgeInsets.only(left: 32, right: 32),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Color.fromRGBO(27, 55, 100, 1), fontSize: 18),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.34),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                    padding: EdgeInsets.only(left: 32, right: 32),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Color.fromRGBO(27, 55, 100, 1), fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
