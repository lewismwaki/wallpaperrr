import 'package:flutter/foundation.dart';

class IsLikedProvider with ChangeNotifier {
  static bool likedWallpaper = false;

  //like wallpaper
  //setter
  set setToLikedWallpaper(newBool) {
    likedWallpaper = newBool;
    notifyListeners();
  }

  //getter
  bool get setToLikedWallpaper => likedWallpaper;
}
