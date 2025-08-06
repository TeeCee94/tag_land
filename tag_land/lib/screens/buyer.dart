import 'package:flutter/material.dart';
import 'package:tag_land/screens/authentication_screens/signup.dart';
import 'package:tag_land/models/buyer.dart';

// import 'dart:convert';
// import 'package:http/http.dart' as http;

class BuyerPage extends StatelessWidget {
  BuyerPage({super.key});

  final FetchUsers fetchService = FetchUsers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<HomeData>(
          future: fetchService.fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            } else {
              final users = snapshot.data!;
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                spacing: 150,
                children: [
                  SizedBox(
                    height: 500,
                    child: Image.asset(
                      users.image,
                      // Image.asset(
                      //   'assets/images/houses/house2.jpeg',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image),
                    ),
                  ),
                  // SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 182, 15, 3),
                      foregroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text(
                      users.text,
                      // Text('Join as a Buyer'),
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}
