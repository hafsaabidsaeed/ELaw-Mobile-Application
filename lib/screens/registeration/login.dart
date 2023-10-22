import 'package:flutter/material.dart';
import 'package:project/screens/registeration/registeration.dart';

import '../home/home_screen.dart';

class Login extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top:screenWidth * 0.15, bottom: screenWidth * 0.15, left: screenWidth * 0.1, right: screenWidth * 0.1),
        child: Container(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.08),
              ),
              const Text("Login to your account"),
              Image.asset(
                'assets/login_img.png',
                width: screenWidth ,
                height: screenHeight * 0.4,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(height: screenHeight* 0.005,),
                  TextFormField(
                    controller: _emailController,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Icon(Icons.person),
                      ),
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
                  SizedBox(height: screenHeight* 0.01,),
                  const Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(height: screenHeight* 0.005,),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscurePassword,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      border: const OutlineInputBorder(),
                      prefixIcon: const Padding(
                      padding: EdgeInsets.only(right: 20.0, left: 20),
                      child: Icon(Icons.lock),
                    ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscurePassword ? Icons.remove_red_eye : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscurePassword = !_isObscurePassword;
                          });
                        },
                      ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomeScreen();
                      },
                    ),
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
                child: const Text("Login"),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Registration();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.blue[900],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
