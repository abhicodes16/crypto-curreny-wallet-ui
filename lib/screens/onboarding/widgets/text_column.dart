import 'package:flutter/material.dart';
import 'package:wallets/screens/constants.dart';

class TextColumn extends StatelessWidget {
  final String title;
  final String text;

  const TextColumn({
    @required this.title,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: kBlack, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: kSpaceS),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(color: kBlack),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
