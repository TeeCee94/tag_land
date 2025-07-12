import 'package:flutter/material.dart';
import 'package:tag_land/screens/all_hot_deals.dart';
import 'package:tag_land/screens/details_page.dart';

class AllProperties extends StatelessWidget {
   AllProperties({super.key});

  final List<String> items = [
    'assets/images/houses/house1.jpeg',
    'assets/images/houses/house2.jpeg',
    'assets/images/houses/house3.jpeg',
    'assets/images/houses/house4.jpeg',
    'assets/images/houses/house5.jpeg',
    'assets/images/houses/house6.jpeg',
    'assets/images/houses/house7.jpeg',
    'assets/images/houses/house8.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: TextField(
          decoration: InputDecoration(
            hintText: "search for dream house",
            prefixIcon: Icon(Icons.search,
                color: Colors.grey), // Search icon inside the field
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            suffix: IconButton(
              icon: Icon(Icons.settings, color: Colors.grey),
              onPressed: () {
                // Handle settings action
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommendation',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => AllHotDeals()),);
                            },
                            child: Text(
                              'View more...',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Container(
                              height: 200,
                              width: 100, // Set a fixed width for the image
                              child: Image.asset(
                                items[index], // Fixed asset path
                                fit: BoxFit.fill,
                              ),
                            ),
                            title: Row(
                              children: [
                                Text('Panama Estate'),
                                SizedBox(width: 5),
                                Icon(Icons.check_circle,
                                    color: Colors.green, size: 16),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on,
                                        color: Colors.red, size: 16),
                                    SizedBox(width: 5),
                                    Text('Area 1, Abuja'),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 19, 90, 213),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      style: ButtonStyle(),
                                      child: Text(
                                        'Request for inspection',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => DetailsPage()));
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                  ],
                ),
        ),
      );
  }
}