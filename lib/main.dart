import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/screens/registration.dart';
import 'package:voiceprescriptionfe/screens/sign_up.dart';
import 'package:voiceprescriptionfe/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Registration.id,
      routes: {
        Registration.id: (context) => Registration(),
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => Login(),
      },
      home: Registration(),
    );
  }
}
