import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/main/component/ThemeItemWidget.dart';
import 'package:pradeep_the_developer/main/model/AppModel.dart';

class ThemeList extends StatelessWidget {
  final List<ProTheme> list;

  ThemeList(this.list);

  @override
  Widget build(BuildContext context) {
    return AnimatedListView(
      scrollDirection: Axis.vertical,
      itemCount: list.length,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      listAnimationType: ListAnimationType.FadeIn,
      fadeInConfiguration: FadeInConfiguration(
          delay: 100.milliseconds, duration: 700.milliseconds),
      itemBuilder: (context, index) => ThemeItemWidget(index, list[index]),
    );
  }
}
