import 'package:flutter/material.dart';
import 'package:wallets/screens/constants.dart';


class Header extends StatelessWidget {
  final VoidCallback onSkip;

  const Header({
    @required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 80.0,
          width: 80.0,
          child: Image.asset('images/white-icon.png'),
        ),
        GestureDetector(
          onTap: onSkip,
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: kWhite,
                ),
          ),
        ),
      ],
    );
  }
}
