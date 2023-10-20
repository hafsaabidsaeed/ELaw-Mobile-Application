import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  List<String> areas = ['Lahore', ' Karachi', 'Islamabad','Sialkot', 'Okara','Multan'];
  List<String> qualificationList = [
    'Bachelors of Law-LLB',
    'Master of Legal Studies-MLS',
    'Master of Dispute Resolution-MDR',
    'Juris Doctor-JD',
    'Master of Legal Studies-MLS'
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width * .65,
        child: ListView(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(15.0),
              height: 50,
              width: double.infinity,
              color: Colors.blue[100],
              child:  const Text('FILTER',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
          const SizedBox(height: 15,),
          const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.grey,),
                          Text('Area',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
          ..._buildDrawerList(areas),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
          const SizedBox(height: 15),
          Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "./assets/law.png",
                              width: 28, // Set the desired width
                              height: 28, // Set the desired height
                            ),
                            const SizedBox(width: 8),
                            const Text("Qualification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
          ..._buildDrawerList(qualificationList),
        ],
      ),
    );
  }

  List<Widget> _buildDrawerList(List<String> currentList) {
    List<bool> checkedList = List<bool>.filled(currentList.length, false);
    return List.generate(currentList.length, (index) {
      return CheckboxListTile(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(15),
        // ),
        title: Text(currentList[index]),
        value: checkedList[index], // Set initial value as needed
        onChanged: (bool? value) {
          setState(() {
            checkedList[index] = value!; // Update the checked state in the list
          });
        },
      );
    });
  }
}