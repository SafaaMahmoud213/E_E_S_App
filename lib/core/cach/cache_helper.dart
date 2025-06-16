import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static cachInitialization() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setData({required String key, dynamic value}) async {
    if (value is bool) {
      await sharedPreferences.setBool(key, value);
      return true;
    }
    if (value is int) {
      await sharedPreferences.setInt(key, value);
      return true;
    }
    if (value is String) {
      await sharedPreferences.setString(key, value);
      return true;
    }
    if (value is double) {
      await sharedPreferences.setDouble(key, value);
      return true;
    }
    return false;
  }

  static dynamic getData({required dynamic key}) {
    sharedPreferences.get(key);
  }

  Future<bool> removeItem({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  Future<bool> cleanItem() async {
    return await sharedPreferences.clear();
  }

  Future<bool> containKey({required String key}) async {
    return sharedPreferences.containsKey(key);
  }
}
