import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/mealime/models/MIASelectOptionsModel.dart';
import 'package:pradeep_the_developer/fullApps/mealime/screens/MIAServingsScreen.dart';
import 'package:pradeep_the_developer/fullApps/mealime/utils/MIAColors.dart';
import 'package:pradeep_the_developer/fullApps/mealime/utils/MIACommomWidgets.dart';
import 'package:pradeep_the_developer/fullApps/mealime/utils/MIAConstants.dart';
import 'package:pradeep_the_developer/fullApps/mealime/utils/MIADataGenerator.dart';
import 'package:pradeep_the_developer/main.dart';

class MIADislikesScreen extends StatefulWidget {
  const MIADislikesScreen({Key? key}) : super(key: key);

  @override
  _MIADislikesScreenState createState() => _MIADislikesScreenState();
}

class _MIADislikesScreenState extends State<MIADislikesScreen> {
  List<MIASelectOptionsModel> dislikeList = [];

  @override
  void initState() {
    dislikeList = getDislikesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: miaAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('How about dislikes?', style: boldTextStyle(size: 30)),
              20.height,
              Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: dislikeList.map((e) {
                    int index = dislikeList.indexOf(e);
                    return Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: e.selected!
                              ? miaContainerColor
                              : appStore.isDarkModeOn
                                  ? context.cardColor
                                  : miaContainerSecondaryColor,
                          borderRadius: radius(miaDefaultRadius)),
                      child: Text(e.title,
                          style: boldTextStyle(
                            decoration: e.selected!
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                            color: appStore.isDarkModeOn
                                ? e.selected!
                                    ? Colors.black
                                    : Colors.white
                                : Colors.black,
                          )),
                    ).onTap(() {
                      e.selected = !e.selected!;
                      setState(() {});
                    }, borderRadius: radius(miaDefaultRadius));
                  }).toList()),
            ],
          ),
          AppButton(
            color: miaPrimaryColor,
            text: 'Continue',
            textStyle: boldTextStyle(color: white),
            onTap: () {
              MIAServingsScreen().launch(context);
            },
          ).center().paddingBottom(20),
        ],
      ).paddingSymmetric(horizontal: 16),
    );
  }
}
