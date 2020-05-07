import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/components/input_text_fields.dart';
import 'package:voiceprescriptionfe/components/login_or_signup_button.dart';
import 'package:voiceprescriptionfe/components/forget_password_button.dart';
import 'package:voiceprescriptionfe/components/CustomShapeCard.dart';

class Login extends StatelessWidget {
  static String id = 'loginscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('images/LoginBG.png'),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 60),
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    letterSpacing: 1,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 40),
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.height * 0.73,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: CustomPaint(
                    painter:
                        CustomBorderStroke(color: Colors.black, stroke: 0.8),
                  ),
                ),
                clipper: CustomClipPath(),
              ),
            ),
            Positioned(
              right: 0,
              top: 10,
              child: Image.asset(
                'images/Login_SVG.png',
                height: 200,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 170),
                    child: InputTextField(
                      inputText: 'Email ID',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InputTextField(
                    inputText: 'Password',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  LoginOrSignUpButton(
                    // In widgets/login_or_signup_button.dart
                    inputText: 'LOG IN',
                  ),
                  SizedBox(
                    height: 20,  
                  ),
                  ForgetPasswordButton(), // In widgets/forget_password_buttons.dart
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
