import 'package:flutter/material.dart';
import 'package:tag_land/screens/authentication_screens/signup.dart';

class BuyerPage extends StatelessWidget {
  const BuyerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          spacing: 150,
          children: [
            SizedBox(
              height: 500,
              child: Image.asset('assets/images/houses/house2.jpeg',
              fit: BoxFit.cover,
              ),
            ),
            // SizedBox(height: 60),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              }, 
              child: Text('Join as a Buyer'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color.fromARGB(255, 182, 15, 3),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
    
    );
  }
}