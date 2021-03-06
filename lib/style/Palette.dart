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

  static TextStyle appbarTitle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
  );

  static TextStyle header = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
  );
  static TextStyle subTitle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
  );

  static TextStyle subTitle2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
  );

  static TextStyle redText = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
    color: Colors.red,
  );

  static TextStyle greenText = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
    color: Colors.green,
  );

  static TextStyle title2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
  );

  static TextStyle themeTitle = TextStyle(
    fontWeight: FontWeight.w700,
    color: kThemeColor,
    fontSize: 18.0,
  );

  static TextStyle themeBtnText = TextStyle(
    fontWeight: FontWeight.w700,
    color: kThemeColor,
    fontSize: 15.0,
  );

  static TextStyle darkYelloText = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.amber[800],
    fontSize: 13.0,
  );

  static TextStyle themeHeaderText = TextStyle(
    fontWeight: FontWeight.w700,
    color: kThemeColor,
    fontSize: 24.0,
  );

  static TextStyle whiteHeader = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 30.0,
    color: Colors.white,
  );

  static TextStyle whiteHeader2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.0,
    color: Colors.white,
  );

  static TextStyle whiteHeader3 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
    color: Colors.white,
  );

  static TextStyle header2 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
  );

  static TextStyle whiteContent = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    color: Colors.white,
  );

  static TextStyle whiteSubTitleB = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    color: Colors.white,
  );

  static TextStyle blackSubTitleB = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    color: Colors.black,
  );

  static TextStyle greySubTitleB = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    color: Colors.grey,
  );

  static TextStyle whiteSubTitledashboard = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11.0,
    color: Colors.white,
  );

  static TextStyle whiteSubTitleS = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10.0,
    color: Colors.white,
  );

  static TextStyle whiteSubTitle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13.0,
    color: Colors.white,
  );

  static TextStyle whiteSubTitle2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
    color: Colors.white,
  );

  static TextStyle themeColorSubTitle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14.0,
    color: kThemeColor,
  );

  static TextStyle themeBtnSmall = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 12.0,
    color: kThemeColor,
  );

  static TextStyle whiteTitle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    color: Colors.white,
  );

  static TextStyle whiteTitleB = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    color: Colors.white,
  );

  static TextStyle whiteTitle2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    color: Colors.white,
  );

  static TextStyle whiteBtn = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15.0,
    color: Colors.white,
  );

  static TextStyle title = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );

  static TextStyle btnTextMagento = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    color: kDarkThemeColor,
  );

  static BoxDecoration unitGradient = BoxDecoration(
      color: Colors.pink[50],
      borderRadius: BorderRadius.all(Radius.circular(5.0)));

  static TextStyle listTileTitle = TextStyle(fontWeight: FontWeight.w600);

  static TextStyle listTileSubTitle = TextStyle(fontWeight: FontWeight.w500);

  static RoundedRectangleBorder cardShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0));

  static RoundedRectangleBorder btnShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0));
  static RoundedRectangleBorder seachBoxCardShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));

  static RoundedRectangleBorder topCardShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0));

  static EdgeInsets productNameMargin = EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0);

  static RoundedRectangleBorder leftCardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8.0),
      bottomLeft: Radius.circular(8.0),
    ),
  );

  static RoundedRectangleBorder rightCardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(8.0),
      bottomRight: Radius.circular(8.0),
    ),
  );
}
