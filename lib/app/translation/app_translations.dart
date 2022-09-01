import 'dart:ui';

import 'package:get/get.dart';

import 'en_US/en_us_translations.dart';
import 'my_MM/my_mm_translations.dart';

// abstract class AppTranslation {
//   static Map<String, Map<String, String>> translations = {
//     'en_US': enUs,
//     'my_MM': mmMm,
//   };
// }
class AppTranslation extends Translations {
  // Default locale
  static final locale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'English',
    'မြန်မာ',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('en', 'US'),
    Locale('mm', 'MM'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'mm_MM': mmMm,
      };

  // Gets locale from language, and updates the locale
  // void changeLocale(String lang) {
  //   final locale = _getLocaleFromLanguage(lang);
  //   Get.updateLocale(locale);
  // }

  // // Finds language in `langs` list and returns it as Locale
  // Locale _getLocaleFromLanguage(String lang) {
  //   for (int i = 0; i < langs.length; i++) {
  //     if (lang == langs[i]) return locales[i];
  //   }
  //   return Get.locale;
  // }
}

