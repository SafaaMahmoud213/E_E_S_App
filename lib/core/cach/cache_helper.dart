import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  cachInitialization() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> setData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    }
    if (value is int) {
      return await sharedPreferences.setInt(key, value);
    }
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }

  dynamic getData({required dynamic key}) {
    return sharedPreferences.get(key);
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
