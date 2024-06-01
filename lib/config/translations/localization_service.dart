import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/data/local/my_shared_pref.dart';
import 'ar_SA/ar_SA_translation.dart';
import 'en_US/en_us_translation.dart';

class LocalizationService extends Translations {
  // default language
  // todo change the default language
  static Locale defaultLanguage = supportedLanguages['en']!;

  // supported languages
  static Map<String, Locale> supportedLanguages = {
    'en': const Locale('en', 'US'),
    'ar': const Locale('ar', 'SA'),
  };

  // supported languages fonts family (must be in assets & pubspec yaml) or you can use google fonts
  static Map<String, TextStyle> supportedLanguagesFontsFamilies = {
    // todo add your English font families (add to assets/fonts, pubspec and name it here) default is poppins for english and cairo for arabic
    'en': const TextStyle(fontFamily: 'Poppins'),
    'ar': const TextStyle(fontFamily: 'notoSans'),
  };

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'ar_SA': arSA,
      };

  /// check if the language is supported
  static isLanguageSupported(String languageCode) =>
      supportedLanguages.keys.contains(languageCode);

  /// update app language by code language for example (en,ar..etc)
  static updateLanguage(String languageCode) async {
    // check if the language is supported
    if (!isLanguageSupported(languageCode)) return;
    // update current language in shared pref
    MySharedPref.setCurrentLanguage(languageCode);
    await Get.updateLocale(supportedLanguages[languageCode]!);
  }

  /// check if the language is english
  static bool isItEnglish() =>
      MySharedPref.getCurrentLocal().languageCode.toLowerCase().contains('en');

  /// get current locale
  static Locale getCurrentLocal() => MySharedPref.getCurrentLocal();
}
