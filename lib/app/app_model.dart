import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {
  String pageName = '';

  setPageName(String data) {
    pageName = data;
    notifyListeners();
  }
}
