import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {
  /// app全局配置 eg:theme
  static late SharedPreferences _sharedPreferences;

  /// 必备数据的初始化操作
  ///
  /// 由于是同步操作会导致阻塞,所以应尽量减少存储容量
  static init() async {
    // async 异步操作
    // sync 同步操作
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  /// 根据key存储int类型
  static Future<bool> setInt(String key, int value) {
    return _sharedPreferences.setInt(key, value);
  }

  /// 根据key获取int类型
  static int? getInt(String key, {int defaultValue = 0}) {
    return _sharedPreferences.getInt(key) ?? defaultValue;
  }

  /// 根据key存储double类型
  static Future<bool> setDouble(String key, double value) {
    return _sharedPreferences.setDouble(key, value);
  }

  /// 根据key获取double类型
  static double? getDouble(String key, {double defaultValue = 0.0}) {
    return _sharedPreferences.getDouble(key) ?? defaultValue;
  }

  /// 根据key存储字符串类型
  static Future<bool> putString(String key, String value) {
    return _sharedPreferences.setString(key, value);
  }

  /// 根据key获取字符串类型
  static String? getString(String key, {String defaultValue = ""}) {
    return _sharedPreferences.getString(key) ?? defaultValue;
  }

  /// 根据key存储布尔类型
  static Future<bool> setBool(String key, bool value) {
    return _sharedPreferences.setBool(key, value);
  }

  /// 根据key获取布尔类型
  static bool? getBool(String key, {bool defaultValue = false}) {
    return _sharedPreferences.getBool(key) ?? defaultValue;
  }

  /// 根据key存储字符串类型数组
  static Future<bool> setStringList(String key, List<String> value) {
    return _sharedPreferences.setStringList(key, value);
  }

  /// 根据key获取字符串类型数组
  static List<String> getStringList(String key,
      {List<String> defaultValue = const []}) {
    return _sharedPreferences.getStringList(key) ?? defaultValue;
  }

  /// 根据key存储Map类型
  static Future<bool> setMap(String key, Map value) {
    return _sharedPreferences.setString(key, json.encode(value));
  }

  /// 根据key获取Map类型
  static Map<String, dynamic> getMap(String key) {
    String jsonStr = _sharedPreferences.getString(key) ?? "";
    return jsonStr.isEmpty ? {} : json.decode(jsonStr);
  }

  //封装方式二：统一set、get方法 待完善 泛型

  /// 通用设置持久化数据
  static _setLocalStorage<T>(String key, T value) {
    String type = value.runtimeType.toString();

    switch (type) {
      case "String":
        putString(key, value as String);
        break;
      case "int":
        setInt(key, value as int);
        break;
      case "bool":
        setBool(key, value as bool);
        break;
      case "double":
        setDouble(key, value as double);
        break;
      case "List<String>":
        setStringList(key, value as List<String>);
        break;
      case "_InternalLinkedHashMap<String, String>":
        setMap(key, value as Map);
        break;
    }
  }

  /// 获取持久化数据
  static dynamic _getLocalStorage<T>(String key) {
    dynamic value = _sharedPreferences.get(key);
    if (value?.runtimeType.toString() == "String") {
      if (_isJson(value)) {
        return json.decode(value);
      }
    }
    return value;
  }

//  其他辅助方法封装

  /// 获取持久化数据中所有存入的key
  static Set<String> getKeys() {
    return _sharedPreferences.getKeys();
  }

  /// 获取持久化数据中是否包含某个key
  static bool containsKey(String key) {
    return _sharedPreferences.containsKey(key);
  }

  /// 删除持久化数据中某个key
  static Future<bool> remove(String key) async {
    return await _sharedPreferences.remove(key);
  }

  /// 清除所有持久化数据
  static Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }

  /// 重新加载所有数据,仅重载运行时
  static Future<void> reload() async {
    return await _sharedPreferences.reload();
  }

  /// 判断是否是json字符串
  static _isJson(String value) {
    try {
      const JsonDecoder().convert(value);
      return true;
    } catch (e) {
      return false;
    }
  }
}
