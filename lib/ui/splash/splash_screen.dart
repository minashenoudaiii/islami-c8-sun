import 'package:flutter/material.dart';
import 'package:islami_c8_sun/ui/home/home_screen.dart';
import 'package:islami_c8_sun/ui/mythemdata.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        MyThemData.themeMode==ThemeMode.light?
        'assets/images/splash_background.png':
        'assets/images/darksplash.jpg',
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
