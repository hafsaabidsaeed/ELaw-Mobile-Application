import 'package:flutter/material.dart';
import 'package:project/screens/chat%20room/chat_room.dart';

class DetailPage extends StatefulWidget {
  final String imagePath;
  final String name;
  final String ranking;
  final String location;

  const DetailPage({super.key,
    required this.imagePath,
    required this.name,
    required this.ranking,
    required this.location,
  });


  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool showExperience = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button tap
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8.0),
                            fixedSize: const Size(120, 50),
                            textStyle: const TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.bold,
                            ),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.blue[100],
                            side: const BorderSide(color: Colors.blueAccent, width: 2),
                            shape: const StadiumBorder()
                          // elevation: 15,
                          // shadowColor: Colors.black
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 33,
                            ),
                            SizedBox(width: 13),
                            Text(
                              '4.2',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.location_on,
                        size: 22,
                        color: Colors.grey,
                      ),
                      Text(
                        widget.location,  // Add this line to display the location
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showExperience = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[100],
                        padding: const EdgeInsets.all(16),
                        textStyle: const TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('About'),
                    ),
                  ),

                  const SizedBox(width: 22),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showExperience = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(17),
                          textStyle: const TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                          ),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey[400],
                      ),
                      child: const Text('Experience'),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
            ),
            showExperience ?
            const Column(
              children: [
                ListTile(
                  title: Text('Experience', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Legal Trainee:', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        subtitle: Text('Details about Legal Trainee'),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text('Immigration Attorney:', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )),
                        subtitle: Text('Details about Immigration Attorney'),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text('Legal Advisor:', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )),
                        subtitle: Text('Details about Legal Advisor'),
                      ),
                    ],
                  ),
                )],
            ):const Column(
              children: [
                ListTile(
                  title: Text('About', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),),
                ),
                Padding(padding: EdgeInsets.only(left: 18),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Dealing Court:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        subtitle: Text('Specific Dealing Information'),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text('Qualification:',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        subtitle: Text('Specific Qualification Information'),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListTile(
                        title: Text('Address:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        subtitle: Text('Specific Address Information'),
                      ),
                    ],
                  ),
                )
              ],
            ),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatRoom()),
          );
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
