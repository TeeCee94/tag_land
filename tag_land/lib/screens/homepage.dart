import 'package:flutter/material.dart';
import 'package:tag_land/screens/all_hot_deals.dart';
import 'package:tag_land/screens/all_properties.dart';
import 'package:tag_land/screens/details_page.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropDownValue = 'Abia State	 Umuahia';

var states = [
  'Abia State	 Umuahia',
  'Adamawa State 	 Yola',
  'Akwa Ibom State 	 Uyo',
  'Anambra State 	 Awka',
  'Bauchi State 	 Bauchi',
  'Bayelsa State 	 Yenagoa',
  'Benue State 	 Makurdi',
  'Borno State 	Maiduguri',
  'Cross River State 	 Calabar',
  'Delta State 	 Asaba',
  'Ebonyi State 	 Abakaliki',
  'Edo State 	 Benin City',
  'Ekiti State 	 Ekiti',
  'Enugu State 	 Enugu',
  'Gombe State 	 Gombe',
  'Imo State 	 Owerri',
  'Jigawa State 	 Dutse',
  'Kaduna State 	 Kaduna',
  'Kano State 	 Kano',
  'Katsina State 	 Katsina',
  'Kebbi State 	 Birnin Kebbi',
  'Kogi State 	 Lokoja',
  'Kwara State 	 Ilorin',
  'Lagos State	 Ikeja',
  'Nasarawa State	 Lafia',
  'Niger State	 Minna',
  'Ogun State	 Abeokuta',
  'Ondo State	 Akure',
  'Osun State	 Oshogbo',
  'Oyo State	 Ibadan',
  'Plateau State	 Jos',
  'Rivers State	 Port Harcourt',
  'Sokoto State	 Sokoto',
  'Taraba State	 Jalingo',
  'Yobe State 	 Damaturu',
  'Zamfara State	 Gusau',
];

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
    return DefaultTabController(
      length: 2,
    child: Scaffold(
      // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(100.0),
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: Row(
            children: [
              Icon(
                Icons.location_on,
                size: 20,
                color: const Color.fromARGB(255, 145, 10, 1),
              ),
              SizedBox(width: 8), // Add some spacing between the icon and text
              DropdownButton(
                value: dropDownValue,
                iconSize: 15,
                items: states.map((String states) {
                  return DropdownMenuItem(
                    value: states,
                    child: Text(states),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropDownValue = newValue!;
                  });
                },
              ),
            ],
          ),
          actions: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/tagris_logo_bg.png'),
            ),
          ],
        ),
      body: Column(
          children: [
          TabBar(
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
            indicatorColor: const Color.fromARGB(255, 135, 10, 1),
            tabs: [
              Tab(
                child: Text(
                  'House',
                  style: TextStyle(color: Colors.black),
                ),
              ),

              // 2nd tab
              Tab(
                child: Text(
                  'Land',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hot Deals',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AllHotDeals()));
                            },
                            child: Text(
                              'View more...',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 200, // Set fixed width for items
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Card(
                              elevation: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      width: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Image.asset(
                                        'assets/images/houses/house8.jpeg', // Fixed asset path
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Panama Estate'),
                                            SizedBox(width: 5),
                                            Icon(Icons.check_circle,
                                                color: Colors.green, size: 16),
                                          ],
                                        ),
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
                                            color: const Color.fromARGB(
                                                255, 19, 90, 213),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Center(
                                            child: TextButton(
                                              style: ButtonStyle(),
                                              child: Text(
                                                'Request for inspection',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
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
                    // SizedBox(height: 5),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommendation',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => AllProperties()),);
                            },
                            child: Text(
                              'View more...',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Container(
                              // height: 200,
                              width: 100, // Set a fixed width for the image
                              child: Image.asset(
                                items[index], // Fixed asset path
                                fit: BoxFit.cover,
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
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPage()));
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text('Lands for sale coming soon....'),),
              ],
            ),
          ),
        ],
        ),
    ),
    );
  }
}