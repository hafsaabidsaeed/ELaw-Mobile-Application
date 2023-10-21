import 'package:flutter/material.dart';
import 'package:project/screens/onboarding_screen/onboarding_screen_1.dart';
import 'package:project/screens/splash%20screen/splash.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/splash": (context)=> const Splash(),
      "/onboarding_screen_1": (context) => const BoardingScreen1()
    },
  ));
}

