import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setApplicationJson(String value) {
    return _sharedPreferences!.setString('application/json', value);
  }

  String getApplicationJson() {
    try {
      return _sharedPreferences!.getString('application/json') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setStatus(String value) {
    return _sharedPreferences!.setString('status', value);
  }

  String getStatus() {
    try {
      return _sharedPreferences!.getString('status') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setMessage(String value) {
    return _sharedPreferences!.setString('message', value);
  }

  String getMessage() {
    try {
      return _sharedPreferences!.getString('message') ?? '';
    } catch (e) {
      return '';
    }
  }
}
