import 'package:flutter/material.dart';
import 'package:wallets/style/constants.dart';

class Palette {
  static BoxDecoration appbarGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        kDarkThemeColor,
        kThemeColor,
        kLightThemeColor,
      ],
    ),
  );

  static BoxDecoration appbarDarkGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        kBlack,
        kBlack,
      ],
    ),
  );

  static BoxDecoration pageGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        kDarkThemeColor,
        kDarkThemeColor,
        kThemeColor,
        kThemeColor,
      ],
    ),
  );
}
