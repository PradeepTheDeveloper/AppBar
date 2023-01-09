import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/main.dart';
import 'package:pradeep_the_developer/main/utils/AppWidget.dart';
import 'package:pradeep_the_developer/fullApps/social/model/SocialModel.dart';
import 'package:pradeep_the_developer/fullApps/social/utils/SocialColors.dart';
import 'package:pradeep_the_developer/fullApps/social/utils/SocialConstant.dart';
import 'package:pradeep_the_developer/fullApps/social/utils/SocialDataGenerator.dart';
import 'package:pradeep_the_developer/fullApps/social/utils/SocialWidget.dart';

import 'SocialHomeCalls.dart';

class SocialViewCall extends StatefulWidget {
  static String tag = '/SocialViewCall';

  @override
  SocialViewCallState createState() => SocialViewCallState();
}

class SocialViewCallState extends State<SocialViewCall> {
  late List<SocialUser> mList;

  @override
  void initState() {
    super.initState();
    mList = addCallData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appStore.isDarkModeOn
          ? scaffoldDarkColor
          : social_app_background_color,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            mTop(context, ""),
            Container(
              decoration: boxDecoration(radius: spacing_middle),
              padding: EdgeInsets.all(spacing_middle),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Calls(mList[index], index);
                    // return Chats(mListings[index], index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
