

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:xo/Login.dart';
import 'package:xo/XO.dart';

class  SPLA extends StatelessWidget {
  static const String routename="spla";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash:Image.asset("assets/images/splash.png",fit: BoxFit.fill,) ,
        splashTransition: SplashTransition.fadeTransition,
        duration: 500,

        nextScreen: Login());
  }
}
