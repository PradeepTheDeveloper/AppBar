import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/defaultTheme/screen/DTDashboardScreen.dart';
import 'package:pradeep_the_developer/defaultTheme/utils/DTDataProvider.dart';
import 'package:pradeep_the_developer/main/model/ListModels.dart';
import 'package:pradeep_the_developer/main/screens/DeveloperKitLauncher.dart';
import 'package:pradeep_the_developer/main/screens/DeveloperKitWebLauncher.dart';
import 'package:pradeep_the_developer/main/utils/AppColors.dart';
import 'package:pradeep_the_developer/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen2.dart';

import '../../main.dart';

class DTDrawerWidget extends StatefulWidget {
  static String tag = '/DTDrawerWidget';

  @override
  DTDrawerWidgetState createState() => DTDrawerWidgetState();
}

class DTDrawerWidgetState extends State<DTDrawerWidget> {
  List<ListModel> drawerItems = getDrawerItems();
  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    if (appStore.selectedDrawerItem > 7) {
      await Future.delayed(Duration(milliseconds: 300));
      scrollController.jumpTo(appStore.selectedDrawerItem * 27.0);

      setState(() {});
    }
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipPath(
        clipper: OvalRightBorderClipper(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Drawer(
          child: Container(
            color: context.scaffoldBackgroundColor,
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  16.height,
                  Text('Screens', style: secondaryTextStyle(size: 12))
                      .paddingOnly(left: 16),
                  4.height,
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text('Home',
                        style: boldTextStyle(color: appColorPrimary)),
                  ).onTap(() {
                    appStore.setDrawerItemIndex(-1);

                    if (isMobile) {
                      DeveloperKitLauncher().launch(context, isNewTask: true);
                    } else if (!isMobile) {
                      DeveloperKitWebLauncher()
                          .launch(context, isNewTask: true);
                    } else {
                      DTDashboardScreen().launch(context, isNewTask: true);
                    }
                  }),
                  Divider(height: 16, color: viewLineColor),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: appStore.selectedDrawerItem == index
                              ? appColorPrimary.withOpacity(0.3)
                              : context.scaffoldBackgroundColor,
                        ),
                        child: Text(
                          drawerItems[index].name!,
                          style: boldTextStyle(
                              color: appStore.selectedDrawerItem == index
                                  ? appColorPrimary
                                  : appStore.textPrimaryColor),
                        ),
                      ).onTap(() {
                        finish(context);
                        appStore.setDrawerItemIndex(index);

                        drawerItems[index].widget.launch(context);
                      });
                    },
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    itemCount: drawerItems.length,
                    shrinkWrap: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
