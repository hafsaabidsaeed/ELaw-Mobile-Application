import 'package:flutter/material.dart';
import 'package:project/constants/signup.dart';

import 'home_screen.dart';

class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(screenWidth * 0.1),
        child: Container(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.08
              ),),
              const Text("Login to your account"),
              Image.asset(
                'assets/login.png',
                width: screenWidth * 0.6,
              ),
               Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Align to the start (top) of the column
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    TextFormField(
                      controller: _emailController,
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[200],),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    TextFormField(
                      controller: _passwordController,
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
                    const SizedBox(height: 40.0),
                  ],
                ),

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
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    fixedSize: Size(screenWidth * 0.7, screenWidth * 0.15),
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.058,
                      fontWeight: FontWeight.bold,
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.blue[100],
                    side: const BorderSide(color: Colors.blueAccent, width: 2),
                    shape: const StadiumBorder()
                  // elevation: 15,
                  // shadowColor: Colors.black
                ),
                child: const Text("Login"),),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",style: TextStyle(fontSize: 17),),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context){
                            return const SignUp();
                          }),);
                  },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.blue[900],
                        ),))
                ],)
            ],
          ),
        ),
      ),
    );
  }}
