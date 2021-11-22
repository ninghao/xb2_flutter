import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {
  String pageName = '';
  String? resourceId;
  bool initializing = true;

  setInitializing(bool data) {
    initializing = data;
    notifyListeners();
  }

  setResourceId(String data) {
    resourceId = data;
    notifyListeners();
  }

  setPageName(String data) {
    pageName = data;
    notifyListeners();
  }
}
