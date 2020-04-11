import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static String id = 'signupscreen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Bg_SignUp.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SignupCards(
                    image: Image.asset('images/Doctor_DP.png'),
                    text: 'SignUp as Doctor',
                  ),
                  SignupCards(
                    image: Image.asset('images/Patient_DP.png'),
                    text: 'SignUp as Patient',
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class SignupCards extends StatelessWidget {
  SignupCards({this.image, this.text});

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 70),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    image,
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(27, 55, 100, 1),
                    width: 1.2,
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color.fromRGBO(27, 55, 100, 1),
                      offset: Offset(0, 0.95),
                    ),
                  ],
                ),
              ),
            ],
          ),
          RoundIcon(),
        ],
      ),
    );
  }
}

class RoundIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Color.fromRGBO(27, 55, 100, 1),
            width: 1,
          ),
        ),
        child: Icon(
          Icons.check,
          color: Color.fromRGBO(27, 55, 100, 1),
        ));
  }
}
