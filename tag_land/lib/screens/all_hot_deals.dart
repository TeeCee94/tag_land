import 'package:flutter/material.dart';

class AllHotDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: TextField(
          decoration: InputDecoration(
            hintText:  "search for dream house",
            prefixIcon: Icon(Icons.search,
                color: Colors.grey), // Search icon inside the field
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none
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
            Text(
              'All Hot Deals',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.75, // Controls height/width ratio
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              // width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset(
                                'assets/images/houses/house2.jpeg', // Fixed asset path
                                fit: BoxFit.cover,
                                height: 80,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Panama Estate'),
                                    SizedBox(width: 5),
                                    Icon(Icons.check_circle,
                                        color: Colors.green, size: 16),
                                  ],
                                ),
                                SizedBox(height: 5),
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
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.all(0))),
                                      child: Text(
                                        'Request for inspection',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
