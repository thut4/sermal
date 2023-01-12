import 'package:flutter/material.dart';
import 'package:mgy4u/app/test.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'bottom_navigation/bottom_nav.dart';
import 'foods_pages/food_page.dart';
import 'home.dart';

// import 'bottom_navigation/bottom_nav.dart';

class Splah extends StatelessWidget {
  const Splah({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: HomePage(),
        // navigateRoute: Test(),
        duration: 5000,
        text: "MGY For You",
        textType: TextType.ColorizeAnimationText,
        textStyle: const TextStyle(
          fontSize: 25,
        ),
        colors: const [
          Colors.purple,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],
      ),
    );
  }
}
