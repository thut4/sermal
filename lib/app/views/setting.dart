import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/controllers/setting_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends GetView {
  RxBool _isLightTheme = false.obs;

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  _saveThemeStatus() async {
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', _isLightTheme.value);
  }

  _getThemeStatus() async {
    var _isLight = _prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') ?? true;
    }).obs;
    _isLightTheme.value = (await _isLight.value);
    Get.changeThemeMode(_isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  }

  Setting() {
    _getThemeStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${_isLightTheme.value ? 'Light' : 'Dark'} Mode',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ObxValue(
              (data) => Switch(
                value: _isLightTheme.value,
                onChanged: (val) {
                  _isLightTheme.value = val;
                  Get.changeThemeMode(
                    _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
                  );
                  _saveThemeStatus();
                },
              ),
              false.obs,
            ),
            // TextButton(
            //     onPressed: () {
            //       if (controller.selectedLang == "English") {
            //         controller.selectedLang = "မြန်မာ";
            //         controller.changeLocale("မြန်မာ");
            //       } else {
            //         controller.selectedLang = "English";
            //         controller.changeLocale("English");
            //       }
            //     },
            //     child: controller.selectedLang == "English"
            //         ? Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text("မြန်မာဘာသာသို့ပြောင်းမည်",
            //                   style: TextStyle(color: Colors.black)),
            //               Text("English is your current language")
            //             ],
            //           )
            //         : Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text("အင်္ဂလိပ်ဘာသာသို့ပြောင်းမည်",
            //                   style: TextStyle(color: Colors.black)),
            //               Text("Myanmar is your current language")
            //             ],
            //           )),
          ],
        ),
      ),
    );
  }
}
