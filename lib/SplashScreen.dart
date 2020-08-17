import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thegram/HomePage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 1);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => HomePage()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("The Gram", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
            CircularProgressIndicator( backgroundColor: Theme.of(context).primaryColorDark)
          ],
        ),
      ),
    );
  }
}
