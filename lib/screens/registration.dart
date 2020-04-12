import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/screens/sign_up.dart';
import 'package:voiceprescriptionfe/screens/login.dart';

class Registration extends StatelessWidget {
  static String id = 'registrationscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                child: Image.asset('images/3568983.png'),
                width: 390,
                alignment: Alignment(0, 1),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.14),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  padding:
                      EdgeInsets.only(left: 37, right: 37, top: 10, bottom: 10),
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
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.id);
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  padding:
                      EdgeInsets.only(left: 37, right: 37, top: 10, bottom: 10),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color.fromRGBO(27, 55, 100, 1), fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
