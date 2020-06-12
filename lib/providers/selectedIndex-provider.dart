import 'package:flutter/foundation.dart';

class SelectedIndexProvider with ChangeNotifier {
  static int selectedIndex = 0;

  //select index
  //setter
  set setToSelectedIndex(newInt) {
    selectedIndex = newInt;
    notifyListeners();
  }

  //getter
  int get setToSelectedIndex => selectedIndex;
}
