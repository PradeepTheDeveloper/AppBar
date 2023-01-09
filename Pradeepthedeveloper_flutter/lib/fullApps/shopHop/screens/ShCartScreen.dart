import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/shopHop/screens/ShCartFragment.dart';
import 'package:pradeep_the_developer/fullApps/shopHop/utils/ShColors.dart';
import 'package:pradeep_the_developer/fullApps/shopHop/utils/ShStrings.dart';
import 'package:pradeep_the_developer/main.dart';

class ShCartScreen extends StatefulWidget {
  static String tag = '/ShCartScreen';

  @override
  ShCartScreenState createState() => ShCartScreenState();
}

class ShCartScreenState extends State<ShCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sh_lbl_account, style: boldTextStyle(size: 18)),
        iconTheme: IconThemeData(
            color: appStore.isDarkModeOn ? white : sh_textColorPrimary),
      ),
      body: ShCartFragment(),
    );
  }
}
