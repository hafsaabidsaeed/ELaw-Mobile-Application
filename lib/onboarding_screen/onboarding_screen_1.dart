import 'package:flutter/material.dart';
import 'onboarding_screen_2.dart';

class BoardingScreen1 extends StatelessWidget {
  const BoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueAccent[100],
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/elaw.png",  width: screenWidth * 0.7),
                Text(
                  "We provide you with the information "
                      "of highly qualified and experienced"
                      " Lawyers from all over Pakistan.",
                  style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const BoardingScreen_2();
                            }),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          fixedSize: Size(0.75 * screenWidth, 0.15 * screenWidth),
                          textStyle: TextStyle(fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey[300],
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("I'm a Client"),
                      ),
                      SizedBox(height: 0.03 * screenWidth),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          fixedSize: Size(0.75 * screenWidth, 0.15 * screenWidth),
                          textStyle: TextStyle(fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold),
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Lawyer"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
