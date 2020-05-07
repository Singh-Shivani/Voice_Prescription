import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:voiceprescriptionfe/components/BottomNavbar.dart';

class DoctorRecord extends StatelessWidget {
  static String id = 'doctorrecordscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
//      bottomNavigationBar: BottomNavbar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/Doc_dashboard.png'),
          ),
        ),
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}

//  int _cIndex = 0;
//
//  void _incrementTab(index) {
//    setState(() {
//      _cIndex = index;
//    });
//  }

//bottomNavigationBar:BottomNavigationBar(
////          currentIndex: _cIndex,
//type: BottomNavigationBarType.shifting ,
//items: [
//BottomNavigationBarItem(
//icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
//title: new Text('Records'),
//),
//BottomNavigationBarItem(
//icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
//title: new Text('Mic'),
//),
//BottomNavigationBarItem(
//icon: Icon(Icons.access_alarm,color: Color.fromARGB(255, 0, 0, 0)),
//title: new Text('Profile'),
//)
//],
//onTap: (index){
////            _incrementTab(index);
//},
//),
