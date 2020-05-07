import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_doctor_pg1.dart';
import 'signup_patient.dart';

class SignUp extends StatelessWidget {
  static String id = 'signupscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('images/Bg_SignUp.png'),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SignUpCard(
                onTap: () {
                  Navigator.pushNamed(context, DoctorSignUpFirstPage.id);
                },
                image: Image.asset(
                  'images/undraw_medical_research_qg4d.png',
                  width: 190,
                ),
                text: 'Doctor',
                height: 10,
              ),
              Text(
                'SIGN UP?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(27, 55, 100, 1),
                ),
              ),
              SignUpCard(
                onTap: () {
                  Navigator.pushNamed(context, PatientSignUp.id);
                },
                image: Image.asset(
                  'images/undraw_patient.png',
                  width: 200,
                ),
                text: 'Patient',
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpCard extends StatelessWidget {
  SignUpCard({this.text, this.image, this.height, this.onTap});

  final Image image;
  final String text;
  final double height;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color.fromRGBO(27, 55, 100, 1),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2.5, 2.5),
                  color: Color.fromRGBO(27, 55, 100, 0.5),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                image,
                SizedBox(
                  height: height,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Color.fromRGBO(27, 55, 100, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 164,
          left: ((MediaQuery.of(context).size.width - 100) / 2) - 18,
          child: Container(
            height: 36,
            width: 36,
            child: Icon(
              Icons.check,
              size: 25,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(18)),
              border: Border.all(
                color: Color.fromRGBO(27, 55, 100, 1),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 2.5),
                  color: Color.fromRGBO(27, 55, 100, 0.5),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
