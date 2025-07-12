import 'package:flutter/material.dart';
import 'dart:async';

import 'package:tag_land/screens/carousel_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CarouselPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/tagris_logo.png'),
        SizedBox(height: 20),
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 176, 12, 0),
            ), // Loading indicator
          ],
      ),
      ),
    );
  }
}