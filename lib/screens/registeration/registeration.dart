import 'package:flutter/material.dart';
import 'package:project/screens/registeration/verification.dart';

class Registration extends StatelessWidget{
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
                Image.asset(
                  'assets/verify.png',
                ),
                Text("Registration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.1),),
                const SizedBox(height: 10,),
                const Text("Add your phone number. We'll send you a verification code",
                  style: TextStyle( fontSize: 16,color: Colors.blueGrey),),
                SizedBox(height: screenHeight * 0.05),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the value to control the roundness
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "+92",
                    hintStyle: const TextStyle(
                        fontSize:20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                    ),),
                ),
                SizedBox(height: screenHeight * 0.05),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context){
                            return const Verification();
                          }),);
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      fixedSize: Size(screenWidth * 0.8, screenWidth * 0.15),
                      textStyle: TextStyle(fontSize: screenWidth * 0.058, fontWeight: FontWeight.bold),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blue[100],
                      side: const BorderSide(color: Colors.blueAccent, width: 2),
                      shape: const StadiumBorder()
                    // elevation: 15,
                    // shadowColor: Colors.black
                  ),
                  child: const Text("Next"),),

              ],
            ),
          ),
        ),
    );
  }

}