import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'bottom_navigation/bottom_nav.dart';

class Splah extends StatelessWidget {
  const Splah({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: BottomNavigation(),
        duration: 5000,
        text: "Get Started!",
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
