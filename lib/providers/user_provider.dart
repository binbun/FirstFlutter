import 'package:flutter/material.dart';
import 'package:test_gf/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    email: '',
    type: '',
    token: '',
    cart: [],
    address: '',
    password: '',
    name: '',
    id: '',
  );

  User get user => _user;

  void setUser(String value) {
    _user = User.fromJson(value);
    notifyListeners();
  }
}
