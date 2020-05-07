import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voiceprescriptionfe/components/inputTextField_DoctorPatient.dart';
import 'package:voiceprescriptionfe/screens/signup_doctor_pg2.dart';

class DoctorSignUpFirstPage extends StatelessWidget {
  static String id = 'doctorsignupfirstpage';

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
              image: AssetImage('images/Doc_SignUpPage_Bg.png'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //just to give space for uploading photo
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Text(''),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: <Widget>[
                    InputTextField(
                      inputText: 'Dr.',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('images/Female Card.png'),
                        Image.asset('images/Male Card.png'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InputTextField(
                      inputText: 'Email ID',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InputTextField(
                      inputText: 'Password',
//                      obscureText: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InputTextField(
                      inputText: 'Re-enter Password',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, DoctorSignUpSecondPage.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('images/click_next_vector.png'),
                    ],
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
