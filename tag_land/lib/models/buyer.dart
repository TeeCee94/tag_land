// import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class FetchUsers {
  Future<HomeData> fetchUsers() async {
    final response = await http.get(
      Uri.parse(
          'https://raw.githubusercontent.com/TeeCee94/json-files-for-tag_land/refs/heads/main/buyer.json'),
    );

    if (response.statusCode == 200) {
      // final List jsonData = jsonDecode(response.body);
      final Map<String, dynamic> data = json.decode(response.body);
      print(data['name']); // ✅ Works if the response is a Map
      return HomeData.fromJson(data);
    } else {
      throw Exception('Failed to load home data');
    }
  }
}

class HomeData {
  final String image;
  final String text;

  HomeData({
    required this.image,
    required this.text,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return HomeData(
      image: json['image'],
      text: json['text'],
    );
  }
}
