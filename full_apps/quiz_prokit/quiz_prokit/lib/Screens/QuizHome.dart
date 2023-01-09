import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_prokit/Screens/NewQuiz.dart';
import 'package:quiz_prokit/Screens/QuizDetails.dart';
import 'package:quiz_prokit/model/QuizModels.dart';
import 'package:quiz_prokit/utils/AppWidget.dart';
import 'package:quiz_prokit/utils/QuizColors.dart';
import 'package:quiz_prokit/utils/QuizDataGenerator.dart';
import 'package:quiz_prokit/utils/QuizStrings.dart';
import 'package:quiz_prokit/utils/QuizWidget.dart';

import 'QuizNewList.dart';
import 'QuizSearch.dart';


class QuizHome extends StatefulWidget {
  static String tag = '/QuizHome';

  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  late List<NewQuizModel> mListings;

  @override
  void initState() {
    super.initState();
    mListings = getQuizData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            32.height,
            Text(quiz_lbl_hi_antonio, style: boldTextStyle(size: 24)),
            8.height,
            Text(
              quiz_lbl_what_would_you_like_to_learn_n_today_search_below,
              style: primaryTextStyle(color: quiz_textColorSecondary),
              textAlign: TextAlign.center,
            ),
            24.height,
            Container(
              margin: EdgeInsets.all(16.0),
              decoration: boxDecoration(radius: 10, showShadow: true, bgColor: context.cardColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  quizEditTextStyle(quiz_lbl_search, isPassword: false).expand(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: boxDecoration(radius: 10, showShadow: false, bgColor: quiz_colorPrimary),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.search, color: quiz_white),
                  ).onTap(
                    () {
                      QuizSearch().launch(context);
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(quiz_lbl_new_quiz, style: boldTextStyle(size: 18)),
                Text(
                  quiz_lbl_view_all,
                  style: primaryTextStyle(color: quiz_textColorSecondary),
                ).onTap(
                  () {
                    setState(
                      () {
                        QuizListing().launch(context);
                      },
                    );
                  },
                ),
              ],
            ).paddingAll(16),
            SizedBox(
              height: 255,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mListings.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => NewQuiz(mListings[index], index).onTap(
                  () {
                    QuizDetails().launch(context);
                  },
                ),
              ),
            ).paddingOnly(bottom: 16),
          ],
        ),
      ),
    );
  }
}
