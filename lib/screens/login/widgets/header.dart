import 'package:flutter/material.dart';
import 'package:wallets/screens/constants.dart';

class Header extends StatelessWidget {
  const Header();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            child: Image.asset('images/white-icon.png'),
          ),
          const SizedBox(height: kSpaceM),
          Text(
            'Welcome to Pineapple Swap',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kBlack, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kSpaceS),
          // Text(
          //   'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          //   style: Theme.of(context)
          //       .textTheme
          //       .subtitle1
          //       .copyWith(color: kBlack.withOpacity(0.5)),
          // ),
        ],
      ),
    );
  }
}
