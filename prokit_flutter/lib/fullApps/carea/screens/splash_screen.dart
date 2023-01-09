import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/carea/screens/walkthrough_screen.dart';

class CareaSplashScreen extends StatefulWidget {
  const CareaSplashScreen({Key? key}) : super(key: key);

  @override
  State<CareaSplashScreen> createState() => _CareaSplashScreenState();
}

class _CareaSplashScreenState extends State<CareaSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        finish(context);
        WalkThroughScreen().launch(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.car_crash, size: 120)),
    );
  }
}
