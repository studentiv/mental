import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mental/shared/dto/user_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class LocalData {
  static const _userKey = 'user';

  final SharedPreferences _sharedPreferences;

  LocalData(this._sharedPreferences);

  Future<bool> setUser(UserDTO user) =>
      _sharedPreferences.setString(_userKey, json.encode(user.toJson()));

  UserDTO? get user {
    final value = _sharedPreferences.getString(_userKey);
    return value != null ? UserDTO.fromJson(json.decode(value)) : null;
  }
}
