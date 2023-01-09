import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/main/component/WebComponent.dart';
import 'package:pradeep_the_developer/main/model/AppModel.dart';
import 'package:pradeep_the_developer/main/utils/AppDataProvider.dart';

class DeveloperKitWebLauncher extends StatefulWidget {
  static String tag = '/DeveloperKitWebLauncher';

  @override
  DeveloperKitWebLauncherState createState() => DeveloperKitWebLauncherState();
}

class DeveloperKitWebLauncherState extends State<DeveloperKitWebLauncher> {
  bool isHover = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<AppTheme>(
        future: getAllAppsAndThemes(),
        builder: (_, snap) {
          if (snap.hasData) {
            return WebComponent(appTheme: snap.data!);
          }
          return snapWidgetHelper(snap);
        },
      ),
    );
  }
}
