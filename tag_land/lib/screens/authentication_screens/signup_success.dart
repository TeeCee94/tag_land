import 'package:flutter/material.dart';
import 'package:tag_land/screens/find_location.dart';

class SignupSuccess extends StatelessWidget {
  const SignupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              child: Image.asset(
                  'assets/images/download-flower-beautiful-flowers-4837d463f17cd9257e72ddddff8966ed.png',
                  fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Text(
              'Sign up successful!',
              style: TextStyle(
                color: const Color.fromARGB(255, 4, 4, 4),
                fontWeight: FontWeight.bold,
                fontSize: 25,
                shadows: [
                  Shadow(
                    color: const Color.fromARGB(255, 120, 118, 118), // Shadow color
                    offset: Offset(2, 4), // Shadow position (x, y)
                    blurRadius: 6, // Blur effect
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You can now login and check out our estates',
              style: TextStyle(
                color: const Color.fromARGB(255, 4, 4, 4),
                // fontStyle: FontStyle.bold,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              autofocus: true,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 182, 15, 3)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FindLocation()));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
