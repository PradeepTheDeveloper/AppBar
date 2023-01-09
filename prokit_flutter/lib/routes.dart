import 'package:flutter/material.dart';
import 'package:pradeep_the_developer/main/model/AppModel.dart';
import 'package:pradeep_the_developer/main/screens/DeveloperKitScreenListing.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    DeveloperKitScreenListing.tag: (context) =>
        DeveloperKitScreenListing(ProTheme()),
  };
}
