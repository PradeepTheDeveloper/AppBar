import 'package:flutter/material.dart';
import 'package:pradeep_the_developer/customPaint/customTemperatureWidget/modal/ItemModal.dart';

class ViewModel extends ChangeNotifier {
  List<dynamic> myList = itemList;

  activateStatus(int index, bool status) {
    this.myList[index].active = status;
    notifyListeners();
  }

  changeStatus(bool status) {
    this.myList[1].active = status;
    notifyListeners();
  }

  changeSpeed(int value) {
    this.myList[1].speed = value;
    notifyListeners();
  }

  changeValue(double value) {
    this.myList[1].value = value;
    notifyListeners();
  }
}
