import 'package:flutter/material.dart';
import 'package:project/constants/login.dart';
import 'package:project/constants/signup.dart';

class BoardingScreen_2 extends StatelessWidget{
  const BoardingScreen_2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue[900],
          child: Padding(
            padding: EdgeInsets.only(top: 60, left: screenWidth * 0.1, right: screenWidth * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context){
                            return const Login();
                          }),);},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      fixedSize: Size(screenWidth * 0.7, screenWidth * 0.15),
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.058,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.grey[300],
                      side: const BorderSide(color: Colors.white, width: 2),
                      shape: const StadiumBorder()
                    // elevation: 15,
                    // shadowColor: Colors.black
                  ),
                  child: const Text("Login"),),
                SizedBox(height: screenWidth * 0.1),
                OutlinedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context){
                            return const SignUp();
                          }),);
                  },
                  style:  OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      fixedSize: Size(screenWidth * 0.7, screenWidth * 0.15),
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.058,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white, width: 2),
                      shape: const StadiumBorder()
                    // elevation: 15,
                    // shadowColor: Colors.black
                  ),
                  child: const Text("Sign Up"),
                ),
                Image.asset(
                  './assets/celebrate_law.png',
                  width: screenWidth * 0.9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }}