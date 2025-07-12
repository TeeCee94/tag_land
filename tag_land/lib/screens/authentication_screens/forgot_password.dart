import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
 ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final _formKey = GlobalKey<FormState>(); 
 // Create a GlobalKey for the Form
  bool _obscurePassword = true;

  var value1 = '';
  var value = '';

  // final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent
      // ),
      body: Column(
        children: [
          Image.network(
            'https://media.istockphoto.com/id/140781367/photo/luxury-dream-home.jpg?s=612x612&w=0&k=20&c=Eqpn_AzV2tLs2xvriKfL0y1i_H4zmWXwnvdV6khOMUY=',
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(7,0,0,0),
              child: ListTile(
                // visualDensity: VisualDensity(vertical: 3), // Adjust the spacing
                title: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                subtitle: Text(
                  'Update your password, fill the form',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
            ),
          SizedBox(height: 20),
         Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,0,20,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                labelText: 'New Password',
                hintText: 'Enter new password',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a new password';
                } else if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
            ),
            SizedBox(height: 30),
                    TextFormField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                labelText: 'Confirm Password',
                hintText: 'Confirm new password',
                border: OutlineInputBorder(),
              ),
              validator: (value1) {
                if (value1 == null || value1.isEmpty) {
                  return 'Please confirm your new password';
                } else if (value1.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
            ),
            SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 182, 15, 3),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
              if (_formKey.currentState!.validate() && value == value1) {
                //    // Handle sign-up logic here
                }
              },
              child: Text('Update Password'),
            ),
          ],
        ),
      ),
         ),
        ]
      ),
    );
  }
}
