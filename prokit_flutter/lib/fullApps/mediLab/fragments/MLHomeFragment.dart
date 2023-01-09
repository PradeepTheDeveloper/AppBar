import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/mediLab/components/MLHomeBottomComponent.dart';
import 'package:pradeep_the_developer/fullApps/mediLab/components/MLHomeTopComponent.dart';

class MLHomeFragment extends StatefulWidget {
  static String tag = '/MLHomeFragment';

  @override
  _MLHomeFragmentState createState() => _MLHomeFragmentState();
}

class _MLHomeFragmentState extends State<MLHomeFragment> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MLHomeTopComponent(),
            16.height,
            MLHomeBottomComponent(),
            64.height,
          ],
        ),
      ),
    );
  }
}
