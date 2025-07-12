import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  // Create a GlobalKey for the Form

  var value1 = '';
  var value2 = '';
  var value = '';

  // final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150), // Extended height
        child: AppBar(
          automaticallyImplyLeading: true,
          iconTheme:
              IconThemeData(color: Colors.white), // Change back button color
          backgroundColor: Colors.black,
          centerTitle: false,
          title: Text(
            'Change Password',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Password',
              style: TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.bold
                ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Enter your password',
                // hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            SizedBox(height: 40),
            Text(
              'New Password',
              style: TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.bold
                ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Enter new password',
                // hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
              validator: (value1) {
                if (value1 == null || value1.isEmpty) {
                  return 'Please enter new password';
                }
                return null;
              },
            ),
            SizedBox(height: 40),
            Text(
              'Re Enter Password',
              style: TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.bold
                ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Repeat new password',
                // hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
              validator: (value2) {
                if (value2 == null || value2.isEmpty) {
                  return 'Please repeat new password';
                }
                return null;
              },
            ),
            SizedBox(height: 150),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 182, 15, 3),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate() && value1 == value2) {
                    // Handle save changes logic here
                  }
                },
                child: Text('Save Changes'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
