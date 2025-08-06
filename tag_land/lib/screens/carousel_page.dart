import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:tag_land/models/page_carousel.dart' as data;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tag_land/models/page_carousel.dart';
import 'package:tag_land/screens/buyer.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int activeIndex = 0; // Define activeIndex as an integer variable

  final FetchUsers fetchService = FetchUsers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      FutureBuilder<HomeData>(
          future: fetchService.fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error}"));
            } else {
              final users = snapshot.data!;
              // final housePixList = users[0]['housePix'] as List<dynamic>;
              final housePixList = List<String>.from(users.housePix);
              final carouselText = users.carouselText;
              final buttonText = users.buttonText;

              return Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                          enableInfiniteScroll: true,
                          pageSnapping: true,
                          onPageChanged: (index, reason) => setState(() {
                            activeIndex = index;
                          }),
                        ),
                        itemCount: housePixList.length,
                        itemBuilder: (context, index, realIndex) {
                          final house = housePixList[index];
                          return buildImage(house, index);
                        },
                      ),
                      SizedBox(height: 10),
                    buildIndicator(activeIndex, List<String>.from(housePixList)),
                      
                      SizedBox(height: 40),
                      Text(carouselText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BuyerPage()),
                          );
                        },
                        // child: Text('Get Started',
                        child: Text(buttonText,
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
          }),
    );
  }
}

Widget buildImage(String housePix, int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    // color: Colors.grey,
    child: Image.asset(housePix, fit: BoxFit.cover),
  );
}

Widget buildIndicator(int activeIndex, List<String> housePix) =>
    AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: housePix.length,
      effect: JumpingDotEffect(
        dotWidth: 20,
        dotHeight: 20,
        activeDotColor: const Color.fromARGB(255, 182, 15, 3),
        dotColor: Colors.grey,
      ),
    );

