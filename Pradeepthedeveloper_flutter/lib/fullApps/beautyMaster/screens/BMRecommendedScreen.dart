import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/components/BMCommonCardComponent.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/components/BMFloatingActionComponent.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/models/BMCommonCardModel.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/utils/BMColors.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/utils/BMCommonWidgets.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/utils/BMDataGenerator.dart';
import 'package:pradeep_the_developer/main.dart';

class BMRecommendedScreen extends StatefulWidget {
  const BMRecommendedScreen({Key? key}) : super(key: key);

  @override
  State<BMRecommendedScreen> createState() => _BMRecommendedScreenState();
}

class _BMRecommendedScreenState extends State<BMRecommendedScreen> {
  List<BMCommonCardModel> recommendedList = getRecommendedList();

  @override
  void initState() {
    setStatusBarColor(appStore.isDarkModeOn
        ? appStore.scaffoldBackground!
        : bmLightScaffoldBackgroundColor);
    super.initState();
  }

  @override
  void dispose() {
    setStatusBarColor(bmSpecialColor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appStore.isDarkModeOn
          ? appStore.scaffoldBackground!
          : bmLightScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: appStore.isDarkModeOn
            ? appStore.scaffoldBackground!
            : bmLightScaffoldBackgroundColor,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30, color: bmPrimaryColor),
          onPressed: () {
            finish(context);
          },
        ),
        title: titleText(title: 'Recommended for you'),
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp, size: 30, color: bmPrimaryColor),
            onPressed: () {
              finish(context);
            },
          ),
          8.width,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: recommendedList.map((e) {
            return BMCommonCardComponent(
                    fullScreenComponent: true, element: e, isFavList: false)
                .paddingSymmetric(vertical: 10);
          }).toList(),
        ).paddingOnly(top: 16, bottom: 70, left: 16, right: 16),
      ),
      floatingActionButton: BMFloatingActionComponent(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
