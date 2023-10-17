import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'home_screen.dart';

class Verification extends StatelessWidget{
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    final defaultPinTheme = PinTheme(
        width: screenWidth * 0.14, // Adjust width based on screen width
        height: screenHeight * 0.081,
        textStyle: const TextStyle(
            fontSize: 22,
            color: Colors.black
        ),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)
        )
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
              children: [
                Image.asset(
                  "assets/verify.png",
                ),
                const Text("Verification", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                const SizedBox(height: 10,),
                const Text("Enter the OTP sent to your phone number",
                  style: TextStyle( fontSize: 18,color: Colors.blueGrey),
                ),
                const SizedBox(height: 70),
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
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context){
                              return const HomeScreen();
                            }),);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(8.0),
                        fixedSize: const Size(350, 60),
                        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.blue[100],
                        side: const BorderSide(color: Colors.blueAccent, width: 2),
                        shape: const StadiumBorder()
                      // elevation: 15,
                      // shadowColor: Colors.black
                    ),
                    child: const Text("Verify"),),
              ]
          ),
        ),
      ),
    );
  }
}
