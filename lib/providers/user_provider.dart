import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  Map<String, dynamic> _user = {
    'username': null,
    'password': null,
    'email': null,
  };

  Map get user {
    return _user;
  }

  void setUser(Map userDetails) {
    _user = userDetails;
    notifyListeners();
  }
}
