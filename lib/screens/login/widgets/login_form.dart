import 'package:flutter/material.dart';
import 'package:wallets/screens/constants.dart';
import 'package:wallets/screens/home.dart';

import 'custom_button.dart';
import 'custom_input_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm();

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          const CustomInputField(
            label: 'Username or Email',
            prefixIcon: Icons.person,
            obscureText: true,
          ),
          SizedBox(height: space),
          const CustomInputField(
            label: 'Password',
            prefixIcon: Icons.lock,
            obscureText: true,
          ),
          SizedBox(height: 2 * space),
          CustomButton(
            color: kBlue,
            textColor: kWhite,
            text: 'Login to continue',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          SizedBox(height: 8 * space),
        ],
      ),
    );
  }
}
