import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/dating/screen/DAWalkThroughScreen.dart';

class DASplashScreen extends StatefulWidget {
  @override
  DASplashScreenState createState() => DASplashScreenState();
}

class DASplashScreenState extends State<DASplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 3));
    if (mounted) finish(context);
    DAWalkThroughScreen().launch(context);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/dating/appLogo.png',
                  fit: BoxFit.cover, height: 200, width: 200)
              .center(),
        ],
      ),
    );
  }
}
