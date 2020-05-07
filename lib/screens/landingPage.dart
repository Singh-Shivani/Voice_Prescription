import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/screens/sign_up.dart';
import 'package:voiceprescriptionfe/screens/login.dart';

class LandingPage extends StatelessWidget {
  static String id = 'landingpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/3568983.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomRaisedButton(
                  text: 'Log In',
                  id: Login.id,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomRaisedButton(
                  text: 'Sign Up',
                  id: SignUp.id,
                ),
              ],
            ),
          )),
    );
  }
}

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({@required this.text, @required this.id});

  final String text;
  final String id;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 150,
      height: 45,
      child: RaisedButton(
        elevation: 5.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.pushNamed(context, id);
        },
        child: Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(27, 55, 100, 1),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
