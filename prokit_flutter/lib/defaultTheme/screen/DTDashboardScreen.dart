import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pradeep_the_developer/defaultTheme/screen/DTDashboardWidget.dart';
import 'package:pradeep_the_developer/main.dart';
import 'package:pradeep_the_developer/main/utils/AppWidget.dart';

import 'DTDrawerWidget.dart';

class DTDashboardScreen extends StatefulWidget {
  static String tag = '/DTDashboardScreen';

  @override
  DTDashboardScreenState createState() => DTDashboardScreenState();
}

class DTDashboardScreenState extends State<DTDashboardScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    setState(() {});
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Observer(
        builder: (context) => Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: appStore.iconColor),
            backgroundColor: appStore.appBarColor,
            title: appBarTitleWidget(context, 'Dashboard'),
          ),
          drawer: DTDrawerWidget(),
          body: DTDashboardWidget(),
        ),
      ),
    );
  }
}
