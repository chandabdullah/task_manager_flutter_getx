import 'package:flutter/material.dart';
// import 'package:app/app/model/user_model.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:app/app/model/user_model.dart';

import '../../../config/translations/localization_service.dart';

class MySharedPref {
  // get storage
  static late final GetStorage _storage;

  // STORING KEYS
  // static const String _tokenKey = 'token';
  // static const String _userKey = 'user_key';
  static const String _currentLocalKey = 'current_local';
  static const String _lightThemeKey = 'is_theme_light';
  static const String _isRememberMeKey = 'remember_me_key';

  /// init get storage services
  static init() async {
    await GetStorage.init();
    _storage = GetStorage();
  }

  /// set theme current type as light theme
  static void setThemeIsLight(bool lightTheme) =>
      _storage.write(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool getThemeIsLight() =>
      _storage.read(_lightThemeKey) ??
      true; // todo set the default theme (true for light, false for dark)

  /// save current locale
  static void setCurrentLanguage(String languageCode) =>
      _storage.write(_currentLocalKey, languageCode);

  /// get current locale
  static Locale getCurrentLocal() {
    String? langCode = _storage.read(_currentLocalKey);
    // default language is english
    if (langCode == null) {
      return LocalizationService.defaultLanguage;
    }
    return LocalizationService.supportedLanguages[langCode]!;
  }

  static void clearSharePref() => _storage.erase();

  static getIsRememberMe() {
    var isRememberMe = (_storage.read(_isRememberMeKey));
    return isRememberMe;
  }

  static setIsRememberMe(String value) {
    _storage.write(_isRememberMeKey, value);
  }

  static removeIsRememberMe() {
    _storage.remove(_isRememberMeKey);
  }
}
