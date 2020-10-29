import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {

  var woWeekend = false;

  activateWoweekend () {
      woWeekend = true;
      notifyListeners();
  }


}