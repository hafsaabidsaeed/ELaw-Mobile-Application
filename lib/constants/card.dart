import 'package:flutter/material.dart';
import 'package:project/constants/card_detail.dart';

class PropertyCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String location;
  final String description;

  const PropertyCard({
    required this.imagePath,
    required this.name,
    required this.location,
    required this.description, // Added trailing comma
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => DetailPage(
              imagePath: imagePath,
              name: name,
              ranking: 'Some Ranking',
              location: location,// You'll need to provide an appropriate ranking value
        ),
        ),);

      },
      

      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      location,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      description,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
