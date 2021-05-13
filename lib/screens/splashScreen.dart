import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallets/screens/home.dart';
import 'package:wallets/screens/onboarding/onboarding.dart';
import 'package:wallets/style/Palette.dart';
import 'package:wallets/style/constants.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      body: Container(
        child: Center(
          child: Container(
            height: 300.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pineapple-icon.png'))),
          ),
        ),
      ),
    );
  }

  void startTimer() {
    Timer(Duration(milliseconds: 2000), () {
      navigateUser(); //It will redirect  after 3 seconds
    });
  }

  void navigateUser() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }
}
