import 'dart:convert';

import 'package:list_of_companies/pages/login/model/data/user.data.dart';
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

  static setUserData({UserData? userData}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('userData', json.encode(userData as UserData));
  }

  static getUserData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String user = preferences.getString("userData") ?? "";
    if (user != "") return UserData.fromJson(json.decode(user));
    return "";
  }
}
