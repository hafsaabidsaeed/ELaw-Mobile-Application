import 'package:project/screens/registeration/registeration.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/registeration/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
            key: formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.all(25),
                  child: Column(children: [
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.08,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    const Text("Create an account, it's free"),
                    SizedBox(height: screenHeight * 0.055),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align to the start (top) of the column
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.05),
                          ),
                          TextFormField(
                            controller: phoneNumberController,
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '.........';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            "Email",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.05),
                          ),
                          TextFormField(
                            controller: emailController,
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email address';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            "Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.05),
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              suffixIcon: const Icon(Icons.visibility),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email address';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            "Confirm Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.05),
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              suffixIcon: const Icon(Icons.visibility),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Registration();
                          }),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: screenWidth * 0.02),
                        fixedSize: Size(screenWidth * 0.5, screenWidth * 0.15),
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.058,
                          fontWeight: FontWeight.bold,
                        ),
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.blue[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the value as needed
                        ),
                      ),
                      child: const Text("Sign up"),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(fontSize: 17),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const Login();
                                }),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.05,
                                color: Colors.blue[900],
                              ),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle Google button press
                          },
                          child: Container(
                            width: screenWidth * 0.15,
                            height: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/google.png',
                                  width: screenWidth *
                                      0.12, // Adjust the size as needed
                                  height: screenWidth *
                                      0.12, // Adjust the size as needed
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            // Handle Gmail button press
                          },
                          child: Container(
                            width: screenWidth * 0.15,
                            height: screenWidth * 0.15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/gmail.png',
                                  width: screenWidth *
                                      0.12, // Adjust the size as needed
                                  height: screenWidth *
                                      0.12, // Adjust the size as needed
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            )));
  }
}
