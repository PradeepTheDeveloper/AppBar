import 'package:flutter/material.dart';
import 'package:pradeep_the_developer/main.dart';
import 'package:pradeep_the_developer/main/utils/AppColors.dart';
import 'package:pradeep_the_developer/main/utils/AppWidget.dart';
import 'package:pradeep_the_developer/main/utils/beforeAfter/BeforeAfter.dart';

class BeforeAfterImageScreen extends StatefulWidget {
  static String tag = '/BeforeAfterImageScreen';

  @override
  BeforeAfterImageScreenState createState() => BeforeAfterImageScreenState();
}

class BeforeAfterImageScreenState extends State<BeforeAfterImageScreen> {
  @override
  void initState() {
    changeStatusColor(appStore.scaffoldBackground!);
    super.initState();
  }

  @override
  void dispose() {
    changeStatusColor(appStore.scaffoldBackground!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Before After Image"),
      body: Center(
        child: BeforeAfter(
          beforeImage: Image.asset('images/integrations/img/after.jpg'),
          afterImage: Image.asset('images/integrations/img/before.jpg'),
        ),
      ),
    );
  }
}
