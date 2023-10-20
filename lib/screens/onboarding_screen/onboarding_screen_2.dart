// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project/screens/registeration/login.dart';
import 'package:project/screens/registeration/signup.dart';

// ignore: camel_case_types
class BoardingScreen_2 extends StatelessWidget {
  const BoardingScreen_2({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double buttonWidth = screenWidth * 0.7;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          color: Colors.blue[900],
          padding: EdgeInsets.only(top: screenHeight * 0.1, ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Login();
                    }),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  fixedSize: Size(buttonWidth, buttonHeight),
                  textStyle: TextStyle(
                    fontSize: screenWidth * 0.058,
                    fontWeight: FontWeight.bold,
                  ),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[300],
                  side: const BorderSide(color: Colors.white, width: 2),
                  shape: const StadiumBorder(),
                ),
                child: const Text("Login"),
              ),
              SizedBox(height: screenHeight * 0.02),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const SignUp();
                    }),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  fixedSize: Size(buttonWidth, buttonHeight),
                  textStyle: TextStyle(
                    fontSize: screenWidth * 0.058,
                    fontWeight: FontWeight.bold,
                  ),
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white, width: 2),
                  shape: const StadiumBorder(),
                ),
                child: const Text("Sign Up"),
              ),
              SizedBox(height: screenHeight * 0.05),
              SizedBox(
                // height: screenHeight * 0.5,
                width: screenWidth,
                child: Image.asset(
                  './assets/celebrate_law.png',
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
