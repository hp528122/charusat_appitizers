import 'dart:async';

import 'package:flutter/material.dart';
import 'package:charusat_new1/pages/homescreen.dart';
import 'package:charusat_new1/animation/loading_circle.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return HomeScreen();
    })));
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color.fromRGBO(1, 0, 2, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Loading(
            radius: 30.0,
            dotRadius: 6.0,
          ),
          SizedBox(height: 50.0,),
          Image.asset('assets/images/images/111.png',width: 300.0,),


        ],),

    );
  }
}