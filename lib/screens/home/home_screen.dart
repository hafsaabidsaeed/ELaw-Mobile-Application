import 'package:project/screens/widgets/filter_drawer.dart';
import 'package:flutter/material.dart';
import '../cart/card.dart' show PropertyCard;
import '../chat room/chat_room.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _bodyDrawerKey = GlobalKey<ScaffoldState>();
 void _openBodyDrawer() {
   _bodyDrawerKey.currentState?.openEndDrawer();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        key: _bodyDrawerKey,
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("ELaw",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,fontSize: 28,
          shadows: [
            Shadow(
              blurRadius: 2.0,
              color: Colors.grey,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),),
        centerTitle: true,
        elevation: 0,
        actions: [
         IconButton(
           icon: const Icon(Icons.chat,color: Colors.black,size: 35,), // Chat Icon
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const ChatRoom()), // Navigate to the Chat Room screen
             );
           },
         ),
       ],
     ),
        /////__________-APP--DRAWER _________///////
        drawer:Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width * .65,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue[100],
              child: const Center(child: Text("ELaw LOGO",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            const ListTile(leading: Icon(Icons.home),title: Text('Home'),),
            const ListTile(leading: Icon(Icons.person),title: Text('View Profile'),),
            const ListTile(leading: Icon(Icons.help_center),title: Text('Help Center'),),
            const ListTile(leading: Icon(Icons.insert_invitation),title: Text('Invite Friends'),),
            Container(height: 1,width: double.infinity ,color: Colors.black,),
            const SizedBox(height: 25),
            const ListTile(title: Text('Settings')),
            const ListTile(title: Text('Terms & Conditions/Privacy')),
            const ListTile(title: Text('Privacy')),
          ],
        ),),
        /////__________FILTER--DRAWER _________///////
        endDrawer: const DrawerWidget(),
        /////__________BODY_________///////
        body: ListView(
          children: [
            Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.blue[100],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
            Row(
              children: [
              Image.asset(
                "./assets/filter.png",
                width:50, // Set the desired width
                height:30, // Set the desired height
              ),
              TextButton(onPressed: (_openBodyDrawer), child: const Text("Filter",style: TextStyle(fontSize: 20,color: Colors.black),)),
              const SizedBox(width: 210,),
              const Text("Sort",style: TextStyle(fontSize: 20),),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 35.0, // Set the size of the arrow
                  // Set the color of the arrow
                ),),
            ],
          ),
            const SizedBox(height: 40.0),
            const Column(
              children: [
                PropertyCard(
                    imagePath: 'assets/card.png',
                    name:' Syed Khuram Naqvi',
                    location: 'Lahore',
                    description: 'Loremjksdhfiusyoeuifdfklsjddbc skjdhfosiuhfskdj'),
                PropertyCard(
                    imagePath: 'assets/card.png',
                    name:' Syed Sahir Bukhari',
                    location: 'Karachi',
                    description: 'Loremjksdhfiusyoeuifdfklsjddbc skjdhfosiuhfskdj'),
                PropertyCard(
                    imagePath: 'assets/card.png',
                    name:' Syed Amer Naqvi',
                    location: 'Islamabad',
                    description: 'Loremjksdhfiusyoeuifdfklsjddbc skjdhfosiuhfskdj')
              ],
            )
          ],)
    );
  }
}