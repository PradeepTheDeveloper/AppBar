import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/musicPodcast/screen/MPWalkThroughScreen.dart';
import 'package:pradeep_the_developer/fullApps/musicPodcast/utils/MPColors.dart';
import 'package:pradeep_the_developer/main/utils/AppWidget.dart';

class MPSplashScreen extends StatefulWidget {
  static String tag = '/MPSplashScreen';

  @override
  MPSplashScreenState createState() => MPSplashScreenState();
}

class MPSplashScreenState extends State<MPSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
    setStatusBarColor(mpAppBackGroundColor);
  }

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 2));

    finish(context);
    MPWalkThroughScreen().launch(context);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mpAppBackGroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonCacheImageWidget("https://i.ibb.co/4TTC8yN/logo.png", 100,
                  width: 100, fit: BoxFit.cover)
              .cornerRadiusWithClipRRect(100)
              .center(),
          8.height,
          Text("Music Podcast", style: boldTextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
