import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/main.dart';
import 'package:pradeep_the_developer/main/utils/AppColors.dart';
import 'package:pradeep_the_developer/main/utils/AppWidget.dart';

class MWUserAccountDrawerHeaderScreen4 extends StatefulWidget {
  static const tag = '/MWUserAccountDrawerHeaderScreen4';

  @override
  _MWUserAccountDrawerHeaderScreen4State createState() =>
      _MWUserAccountDrawerHeaderScreen4State();
}

class _MWUserAccountDrawerHeaderScreen4State
    extends State<MWUserAccountDrawerHeaderScreen4> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(Duration(milliseconds: 500));
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar(context, 'With Custom Background'),
      body: Center(
        child: GestureDetector(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Container(
            decoration: boxDecoration(bgColor: appColorPrimary, radius: 8),
            padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Text(
              "Click here",
              style: primaryTextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: appStore.appBarColor,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Pradeep Kumar"),
                accountEmail: Text("john@gmail.com"),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'images/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/background.jpg'),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                      'images/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/ic_user2.png'),
                ),
              ),
              ListTile(
                title: Text('My Account', style: primaryTextStyle()),
                onTap: () {
                  scaffoldKey.currentState!.openEndDrawer();
                  toasty(context, "My Account");
                },
              ),
              ListTile(
                title: Text('Setting', style: primaryTextStyle()),
                onTap: () {
                  scaffoldKey.currentState!.openEndDrawer();
                  toasty(context, "Setting");
                },
              ),
              ListTile(
                title: Text('Logout', style: primaryTextStyle()),
                onTap: () {
                  scaffoldKey.currentState!.openEndDrawer();
                  toasty(context, "Logout");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
