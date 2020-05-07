import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/screens/doctor_record.dart';
import 'package:voiceprescriptionfe/screens/forgot_password.dart';
import 'package:voiceprescriptionfe/screens/landingPage.dart';
import 'package:voiceprescriptionfe/screens/password_otp.dart';
import 'package:voiceprescriptionfe/screens/reset_password.dart';
import 'package:voiceprescriptionfe/screens/sign_up.dart';
import 'package:voiceprescriptionfe/screens/login.dart';
import 'package:voiceprescriptionfe/screens/signup_doctor_pg1.dart';
import 'screens/signup_doctor_pg2.dart';
import 'screens/signup_patient.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LandingPage.id,
      routes: {
        LandingPage.id: (context) => LandingPage(),
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => Login(),
        DoctorSignUpFirstPage.id: (context) => DoctorSignUpFirstPage(),
        DoctorSignUpSecondPage.id: (context) => DoctorSignUpSecondPage(),
        PatientSignUp.id: (context) => PatientSignUp(),
        Otp.id: (context) => Otp(),
        Reset.id: (context) => Reset(),
        ForgotPassword.id: (context) => ForgotPassword(),
        DoctorRecord.id: (context) => DoctorRecord(),
      },
      home: LandingPage(),
    );
  }
}
