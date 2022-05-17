import 'package:flutter/material.dart';
import 'dart:async';

import 'package:stopwatch/MyStopWatch.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var splashScreenTimer;
  var myTimer = 0;

  timerPlay() {
    splashScreenTimer =
        new Timer.periodic(new Duration(milliseconds: 1000), (timer) {
      myTimer++;
      print("timer------->${myTimer}");
      if (myTimer == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyStopWatch()));
        splashScreenTimer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    timerPlay();
    return Scaffold(
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 25),
              Center(
                child: Container(
                  child: Text(
                    "STOPWATCH AND TIMER APP",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "By Hasnain",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
