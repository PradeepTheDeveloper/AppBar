import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/mealime/components/MIAFavMealComponent.dart';
import 'package:pradeep_the_developer/fullApps/mealime/models/MIAMealModel.dart';
import 'package:pradeep_the_developer/fullApps/mealime/screens/MIASingleMealScreen.dart';
import 'package:pradeep_the_developer/fullApps/mealime/utils/MIACommomWidgets.dart';
import 'package:pradeep_the_developer/fullApps/mealime/utils/MIADataGenerator.dart';

class MIAFavFragment extends StatelessWidget {
  List<MIAMealModel> favList = getMealList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: miaFragmentAppBar(context, 'Favourites', false),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 16,
              children: favList.map((e) {
                return MIAFavMealComponent(element: e).onTap(() {
                  MIASingleMealScreen(element: e).launch(context);
                });
              }).toList(),
            ).paddingSymmetric(horizontal: 8).center(),
            40.height,
          ],
        ),
      ),
    );
  }
}
