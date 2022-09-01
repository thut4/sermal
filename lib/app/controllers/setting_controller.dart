// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../translation/app_translations.dart';
// import 'app_controller.dart';

// class SettingsController extends GetxController {
//   late SharedPreferences prefs;
//   late String selectedLang;
//   //AppController _appCtrl = Get.find<AppController>();

//   onInit() {
//     super.onInit();
//     updateLanguage();
//     //Controller Initialization
//   }

//   changeLocale(String lang) async {
//     prefs = prefs ?? await SharedPreferences.getInstance();
//     final locale = getLocaleFromLanguage(lang);

//     Get.updateLocale(locale!);

//     await prefs.setString("language", lang);
//   }

//   // Finds language in `langs` list and returns it as Locale
//   Locale? getLocaleFromLanguage(String lang) {
//     var langs = AppTranslation.langs;
//     for (int i = 0; i < langs.length; i++) {
//       if (lang == langs[i]) return AppTranslation.locales[i];
//     }
//     return Get.locale;
//   }

//   updateLanguage() async {
//     //selectedLang = await _appCtrl.fetchLanguage();
//   }
// }
