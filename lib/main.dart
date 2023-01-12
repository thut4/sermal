import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/routes/app_pages.dart';
import 'package:mgy4u/app/routes/app_routes.dart';
import 'app/binding/binding.dart';
import 'app/controllers/controller.dart';
import 'app/translation/app_translations.dart';
import 'app/views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
