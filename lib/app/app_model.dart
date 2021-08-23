import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {
  String pageName = '';
  String? resourceId;

  setResourceId(String data) {
    resourceId = data;
    notifyListeners();
  }

  setPageName(String data) {
    pageName = data;
    notifyListeners();
  }
}
