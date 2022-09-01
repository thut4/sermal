import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/routes/app_pages.dart';
import 'package:mgy4u/app/routes/app_routes.dart';
import 'app/binding/binding.dart';
import 'app/controllers/fb_controller.dart';
import 'app/translation/app_translations.dart';
import 'app/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
      home: Splah(),
      locale: AppTranslation.locale,
      translations: AppTranslation(),
    );
  }
}
