import 'package:flutter/material.dart';
import 'package:project/constants/splash.dart';
import 'onboarding_screen/onboarding_screen_1.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context)=> const Splash(),
      "/onboarding_screen_1": (context) => const BoardingScreen1()
    },
  ));
}

