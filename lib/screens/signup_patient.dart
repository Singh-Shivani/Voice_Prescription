import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/components/inputTextField_DoctorPatient.dart';
import 'package:voiceprescriptionfe/components/login_or_signup_button.dart';
import 'package:voiceprescriptionfe/screens/doctor_record.dart';

class PatientSignUp extends StatelessWidget {
  static String id = 'patientsignup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
            height: 500,
            padding: EdgeInsets.only(left: 50, top: 180, right: 50, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InputTextField(
                  inputText: 'Full Name',
                ),
                InputTextField(
                  inputText: 'Email ID',
                ),
                InputTextField(
                  inputText: 'Mobile Number',
                ),
                InputTextField(
                  inputText: 'Password',
                ),
                InputTextField(
                  inputText: 'Re-enter Password',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 150),
                  child: LoginOrSignUpButton(
                    inputText: 'SIGN UP',
                    onTap: () {
                      Navigator.pushNamed(context, DoctorRecord.id);
                    },
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
