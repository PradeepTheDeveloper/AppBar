import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/models/BMMasterModel.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/screens/BMTopOffersScreen.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/utils/BMDataGenerator.dart';
import 'package:pradeep_the_developer/fullApps/beautyMaster/utils/BMCommonWidgets.dart';

class BMTopServiceHomeComponent extends StatelessWidget {
  List<BMMasterModel> topServiceList = getTopServicesHomeList();

  @override
  Widget build(BuildContext context) {
    return HorizontalList(
        padding: EdgeInsets.symmetric(horizontal: 16),
        spacing: 16,
        itemCount: topServiceList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: context.cardColor, borderRadius: radius(32)),
                child: bmCommonCachedNetworkImage(topServiceList[index].image,
                    height: 36),
              ).onTap(() {
                BMTopOffersScreen().launch(context);
              }),
              8.height,
              Text(topServiceList[index].name, style: boldTextStyle(size: 14)),
            ],
          );
        });
  }
}
