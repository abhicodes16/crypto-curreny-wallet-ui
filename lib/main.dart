import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallets/screens/home.dart';
import 'package:wallets/screens/splashScreen.dart';
import 'package:wallets/style/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Softieons CRM';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
    );

    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primaryColor: kThemeColor,
          primarySwatch: Colors.yellow,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.yellow,
          accentColor: Colors.amber,
          primaryColor: kBlack,
          canvasColor: Colors.black,
          cardColor: kBlack,
          bottomAppBarColor: Colors.grey[900],
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
              title: 'PhonePe Property',
              debugShowCheckedModeBanner: false,
              theme: theme,
              darkTheme: darkTheme,
              home: SplashScreen(),
            ));
  }
}
