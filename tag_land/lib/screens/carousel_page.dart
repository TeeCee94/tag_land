import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tag_land/screens/buyer.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class CarouselPage extends StatefulWidget {
   CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  // final controller = CarouselController();
  int activeIndex = 0;

  // final housePix = [
  //   'assets/images/houses/house1.jpeg',
  //   'assets/images/houses/house2.jpeg',
  //   'assets/images/houses/house3.jpeg',
  //   'assets/images/houses/house4.jpeg',
  //   'assets/images/houses/house5.jpeg',
  //   'assets/images/houses/house6.jpeg',
  //   'assets/images/houses/house7.jpeg',
  //   'assets/images/houses/house8.jpeg',
  // ];

  Future<List<dynamic>> fetchUsers() async {
  final response = await http.get(
    Uri.parse('https://raw.githubusercontent.com/TeeCee94/json-files-for-tag_land/refs/heads/main/carousel_page.json'),
  );

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load JSON');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      FutureBuilder<List<dynamic>>(
        future: fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            final users = snapshot.data!;
            return 
            
            Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,20,0,0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                CarouselSlider.builder(
                  // carouselController: controller,
                  options: CarouselOptions(
                    initialPage: 0,
                    height: 400,
                    viewportFraction: 0.8,
                    autoPlay: true,
                    reverse: false,
                    autoPlayInterval: Duration(seconds: 2),
                    enlargeCenterPage: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: false,
                    pageSnapping: true,
                    onPageChanged: (index, reason) => 
                    setState(() {
                      activeIndex = index;
                    }),
                    ),
                    itemCount: housePix.length,
                    itemBuilder: (context, index, realIndex) {
                      final house = housePix[index];
                
                      return buildImage(house, index);
                    },
                  ),
                  SizedBox(height: 20), 
                  buildIndicator(activeIndex, housePix),
                  // SizedBox(height: 20),
                  // buildButtons(),
                  SizedBox(height: 40),
                  Text(
                    'Discover, Buy, Sell, Rent, Lease, Invest in Real Estate Properties',
                    textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey
                  ),
                                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BuyerPage()),
                      );
                    },
                    child: Text('Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 182, 15, 3),
                    ),
                    ),
                  ),
            ],
          ),
        ),
        );
          }
        }
      ),
      );
    }
}

    Widget buildImage(String housePix, int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        // color: Colors.grey,
        child: Image.asset(
          housePix, 
        fit: BoxFit.cover
        ),
      );
    }

    Widget buildIndicator(int activeIndex, List<String> housePix) => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: housePix.length,
      effect: JumpingDotEffect(
        dotWidth: 20,
        dotHeight: 20,
        activeDotColor: const Color.fromARGB(255, 182, 15, 3),
        dotColor: Colors.grey,
      ),
    );

    // Widget buildButtons({bool stretch = false}) => Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     ElevatedButton(
    //       onPressed: previous,
    //       child: Text('Previous'),
    //     ),
    //     const SizedBox(width: 12),
    //     ElevatedButton(
    //       // onPressed: () => controller.previousPage(),
    //       onPressed: next,
    //       child: Text('Next'),
    //     ),
    //   ],
    // );

    // void next() {
    //   controller.nextPage(
    //     duration: Duration(milliseconds: 500),
    //   );
    // }

    // void previous() {
    //   controller.previousPage(
    //     duration: Duration(milliseconds: 500),
    //   );
    // }

  