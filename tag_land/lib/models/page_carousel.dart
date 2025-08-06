// import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
class FetchUsers{


  Future<HomeData> fetchUsers() async {
  final response = await http.get(
    Uri.parse('https://raw.githubusercontent.com/TeeCee94/json-files-for-tag_land/refs/heads/main/carousel_page.json'),
  );

  if (response.statusCode == 200) {
    final List jsonData = jsonDecode(response.body);
    print(response.body);
    return HomeData.fromJson(jsonData);
  } else {
    throw Exception('Failed to load home data');
  }
}

//   Future<HomeData> fetchUser() async {
//   final response = await http.get(
//     Uri.parse('https://raw.githubusercontent.com/TeeCee94/json-files-for-tag_land/refs/heads/main/carousel_page.json'),
//   );

//   if (response.statusCode == 200) {
//     final List jsonData = jsonDecode(response.body);
//     print(response.body);
//     return HomeData.fromJson(jsonData);
//   } else {
//     throw Exception('Failed to load home data');
//   }
// }

}

class HomeData {
  final List<String> housePix;
  final String carouselText;
  final String buttonText;

  HomeData({
    required this.housePix,
    required this.carouselText,
    required this.buttonText,
  });

  factory HomeData.fromJson(List<dynamic> json) {
    return HomeData(
      housePix: List<String>.from(json[0]['housePix']),
      carouselText: json[1]['carouselText'],
      buttonText: json[1]['buttonText'],
    );
  }
}

// // 