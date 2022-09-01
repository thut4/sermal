// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../translation/app_translations.dart';
// import '../views/setting.dart';

// class AppController extends GetxController {
//   late SharedPreferences _prefs;
//   Rx<Setting> _settings = Rx<Setting>(Setting());

//   nInit() {
//     super.onInit();
//     //Controller Initialization
//   }

//   Future<String> fetchLanguage() async {
//     _prefs = await SharedPreferences.getInstance();
//     var lang = _prefs.getString("language") ?? AppTranslation.langs.first;

//     return lang;
//   }
// }
