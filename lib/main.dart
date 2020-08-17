import 'package:flutter/material.dart';
import 'package:thegram/SplashScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColorDark: Color(0xFF292929), primaryColorLight: Colors.white),
      themeMode: ThemeMode.light,

      home: SplashScreen()
    );
  }
}
