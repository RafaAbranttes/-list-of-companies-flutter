import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static setIsLoggedIn({bool logged = false}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("isLoggedIn", logged);
  }

  static getIsLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isLoggedIn = preferences.getBool("isLoggedIn") ?? false;

    return isLoggedIn;
  }
}
