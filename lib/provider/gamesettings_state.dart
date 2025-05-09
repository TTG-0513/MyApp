import 'package:flutter/material.dart';

class GamesettingsState extends ChangeNotifier {
  String points = "";
  String inn = "";
  String out = "";

  void setPoints(String value) {
    points = value;
    notifyListeners();
  }

  void setInn(String value) {
    inn = value;
    notifyListeners();
  }

  void setOut(String value) {
    out = value;
    notifyListeners();
  }
}
