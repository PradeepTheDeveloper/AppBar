import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/dating/utils/DAWidgets.dart';
import 'package:pradeep_the_developer/main.dart';
import 'package:pradeep_the_developer/main/utils/AppConstant.dart';

class NoBalanceScreen2 extends StatefulWidget {
  const NoBalanceScreen2({Key? key}) : super(key: key);

  @override
  _NoBalanceScreen2State createState() => _NoBalanceScreen2State();
}

class _NoBalanceScreen2State extends State<NoBalanceScreen2> {
  @override
  void dispose() {
    setStatusBarColor(appStore.scaffoldBackground!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 230,
              child: commonCachedNetworkImage(
                  '$BaseUrl/images/emptyScreen1/noBalance2.png'),
              decoration: BoxDecoration(
                  color: grey.withOpacity(0.2), shape: BoxShape.circle),
            ),
            70.height,
            Text('No Balance!', style: boldTextStyle(size: 20)),
            16.height,
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: secondaryTextStyle(size: 15),
              textAlign: TextAlign.center,
            ).paddingSymmetric(vertical: 8, horizontal: 60),
          ],
        ),
      ),
    );
  }
}
