import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Home Web/home.dart';
import 'Home mobile/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      splash: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/logo_robo.svg',
            width: 250,
            color: Colors.white,
          ),
        ],
      ),
      nextScreen: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return HomeScreen();
          } else {
            return HomeScreenMobile();
          }
        },
      ),
      splashIconSize: 250,
      splashTransition: SplashTransition.slideTransition,
      animationDuration: Duration(milliseconds: 700),
    );
  }
}
