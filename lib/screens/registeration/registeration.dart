import 'package:flutter/material.dart';
import 'package:project/screens/registeration/verification.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight*0.4,
                // color: Colors.cyan,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/verifyscreen.png',
                      width: screenWidth* 0.7,
                      height: screenHeight * 0.35,
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.deepOrange,
                height: screenHeight * 0.3,
                child: Column(
                  children: [
                    Text(
                      "Registration",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: screenWidth * 0.09),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Add your phone number. We'll send you a verification code",
                      style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.1, // Adjust the width as needed
                          child: const Text(
                            "+92",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16), // Add some spacing between the label and the input field
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.phone, // Use TextInputType.phone to allow only digits
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              hintText: "phone number",
                              hintStyle: const TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight*0.2,
                // color: Colors.purpleAccent,
                child: Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Verification();
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
                            borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                          ),
                        ),
                        child: const Text("Next"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
