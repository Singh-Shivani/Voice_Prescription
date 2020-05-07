import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/components/inputTextField_DoctorPatient.dart';
import 'package:voiceprescriptionfe/components/login_or_signup_button.dart';

class DoctorSignUpSecondPage extends StatelessWidget {
  static String id = 'doctorsignupsecondpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/PatientSignupBg.png'),
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            width: MediaQuery.of(context).size.width - 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InputTextField(
                  inputText: 'Mobile Number',
                ),
                SizedBox(
                  height: 30,
                ),
                InputTextField(
                  inputText: 'Specialisation',
                ),
                SizedBox(
                  height: 30,
                ),
                InputTextField(
                  inputText: 'Address',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Note: Please enter your clinic or hospital's address",
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: LoginOrSignUpButton(
                    inputText: 'SIGN UP',
                    onTap: () {},
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
