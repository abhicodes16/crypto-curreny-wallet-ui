import 'package:flutter/material.dart';
import 'package:wallets/screens/constants.dart';

class WorkDarkCardContent extends StatelessWidget {
  const WorkDarkCardContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Icon(
              Icons.person_pin,
              color: kBlack,
              size: 32.0,
            ),
          ],
        ),
        const SizedBox(height: kSpaceM),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Icon(
              Icons.person,
              color: kBlack,
              size: 32.0,
            ),
            Icon(
              Icons.group,
              color: kBlack,
              size: 32.0,
            ),
            Icon(
              Icons.insert_emoticon,
              color: kBlack,
              size: 32.0,
            ),
          ],
        ),
      ],
    );
  }
}
