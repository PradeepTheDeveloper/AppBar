import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/main/model/ListModels.dart';
import 'package:pradeep_the_developer/main/utils/AppWidget.dart';

import 'MWTextFieldWidgets/MWTextFieldScreen1.dart';
import 'MWTextFieldWidgets/MWTextFieldScreen2.dart';

class MWTextFieldScreen extends StatefulWidget {
  static String tag = '/MWTextFieldScreen';

  @override
  MWTextFieldScreenState createState() => MWTextFieldScreenState();
}

class MWTextFieldScreenState extends State<MWTextFieldScreen> {
  List<ListModel> example = [
    ListModel(name: 'Simple Text Field', widget: MWTextFieldScreen1()),
    ListModel(name: 'Border Text Field', widget: MWTextFieldScreen2()),
  ];

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
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context, 'Text Field'),
        body: ListView.builder(
          itemCount: example.length,
          itemBuilder: ((BuildContext context, index) {
            return ExampleItemWidget(example[index], onTap: () {
              example[index].widget.launch(context);
            });
          }),
        ),
      ),
    );
  }
}
