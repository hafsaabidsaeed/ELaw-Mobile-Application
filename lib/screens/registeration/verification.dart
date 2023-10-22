import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:project/screens/registeration/signup.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final defaultPinTheme = PinTheme(
        width: screenWidth * 0.14,
        height: screenHeight * 0.081,
        textStyle: const TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)));

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(children: [
            Container(
              height: screenHeight * 0.4,
              // color: Colors.cyan,
              child: Column(
                children: [
                  Image.asset(
                    'assets/verifyscreen.png',
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.35,
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.purple,
              height: screenHeight * 0.5,
              child: Column(
                children: [
                  const Text(
                    "Verification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Enter the OTP sent to your phone number",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Pinput(
                    length: 5,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: Colors.blue),
                    )),
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const SignUp();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
                      fixedSize: Size(screenWidth * 0.5, screenWidth * 0.15),
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.058,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Verify"),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
