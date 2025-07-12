import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:tag_land/providers/general_provider.dart';
import 'package:tag_land/screens/splash.dart';

void main() {
  runApp(TagLand());
}

class TagLand extends StatelessWidget {
  const TagLand({super.key});

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => Navigation(),
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
      );
  }
}