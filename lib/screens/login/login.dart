import 'package:flutter/material.dart';
import 'package:wallets/screens/constants.dart';
import 'package:wallets/screens/login/widgets/custom_clippers/blue_top_clipper.dart';
import 'package:wallets/screens/login/widgets/custom_clippers/grey_top_clipper.dart';
import 'package:wallets/screens/login/widgets/custom_clippers/white_top_clipper.dart';
import 'package:wallets/screens/login/widgets/header.dart';
import 'package:wallets/screens/login/widgets/login_form.dart';

class Login extends StatefulWidget {
  const Login();

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: const WhiteTopClipper(),
            child: Container(color: kGrey),
          ),
          ClipPath(
            clipper: const GreyTopClipper(),
            child: Container(color: kBlue),
          ),
          ClipPath(
            clipper: const BlueTopClipper(),
            child: Container(color: kWhite),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kPaddingL),
              child: Column(
                children: const <Widget>[
                  Header(),
                  Spacer(),
                  LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
