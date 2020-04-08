import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static String id = 'signupscreen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: AlignmentDirectional(0, -0.5),
                  child: Container(
                    height: 180,
                    width: 220,
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.blue,
                      elevation: 9,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.5),
                  child: Container(
                    height: 180,
                    width: 220,
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 9,
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
