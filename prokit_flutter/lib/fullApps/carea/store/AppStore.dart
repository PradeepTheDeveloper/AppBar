import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pradeep_the_developer/fullApps/carea/commons/colors.dart';
import 'package:pradeep_the_developer/fullApps/carea/commons/constants.dart';

part 'AppStore.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  double i = 0;

  @observable
  bool isDarkModeOn = false;

  @observable
  bool isHover = false;

  @observable
  Color? scaffoldBackground;

  @observable
  Color? backgroundColor;

  @observable
  Color? backgroundSecondaryColor;

  @observable
  Color? textPrimaryColor;

  @observable
  Color? appColorPrimaryLightColor;

  @observable
  Color? textSecondaryColor;

  @observable
  Color? appBarColor;

  @observable
  Color? iconColor;

  @observable
  Color? iconSecondaryColor;

  @observable
  var selectedDrawerItem = -1;

  @action
  Future<void> toggleDarkMode({bool? value}) async {
    isDarkModeOn = value ?? !isDarkModeOn;

    if (isDarkModeOn) {
      scaffoldBackground = appBackgroundColorDark;

      appBarColor = appBackgroundColorDark;
      backgroundColor = Colors.white;
      backgroundSecondaryColor = Colors.white;
      appColorPrimaryLightColor = cardBackgroundBlackDark;

      iconColor = iconColorPrimary;
      iconSecondaryColor = iconColorSecondary;

      textPrimaryColor = whiteColor;
      textSecondaryColor = Colors.white54;

      textPrimaryColorGlobal = whiteColor;
      textSecondaryColorGlobal = Colors.white54;
      shadowColorGlobal = appShadowColorDark;
    } else {
      scaffoldBackground = whiteColor;

      appBarColor = Colors.white;
      backgroundColor = Colors.black;
      backgroundSecondaryColor = appSecondaryBackgroundColor;
      appColorPrimaryLightColor = appColorPrimaryLight;

      iconColor = iconColorPrimaryDark;
      iconSecondaryColor = iconColorSecondaryDark;

      textPrimaryColor = appTextColorPrimary;
      textSecondaryColor = appTextColorSecondary;

      textPrimaryColorGlobal = appTextColorPrimary;
      textSecondaryColorGlobal = appTextColorSecondary;
      shadowColorGlobal = appShadowColor;
    }
    setStatusBarColor(scaffoldBackground!);

    setValue(isDarkModeOnPref, isDarkModeOn);
  }

  @action
  void toggleHover({bool value = false}) => isHover = value;

  @action
  void setDrawerItemIndex(int aIndex) {
    selectedDrawerItem = aIndex;
  }
}