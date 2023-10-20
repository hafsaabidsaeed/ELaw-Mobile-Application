import 'dart:async';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>{


  @override
  void initState(){
    startTimer();
    super.initState();
  }
  startTimer(){
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed("/onboarding_screen_1");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.white],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Icon(
              Icons.edit,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'splash screen',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

