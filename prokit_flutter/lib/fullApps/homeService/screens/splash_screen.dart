import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pradeep_the_developer/fullApps/homeService/screens/walk_through_screen.dart';
import 'package:pradeep_the_developer/fullApps/homeService/utils/images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pop(context);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WalkThroughScreen()));
      },
    );
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(splash_logo,
            width: 100, height: 100, fit: BoxFit.cover),
      ),
    );
  }
}
