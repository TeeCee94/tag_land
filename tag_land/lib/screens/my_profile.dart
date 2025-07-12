import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  MyProfile({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none, // Allows the avatar to overflow
        children: [
          // Extended AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            // bottom: 0,
            child: Container(
              height: 200, // Adjust height as needed
              decoration: BoxDecoration(
                color: Colors.black, // Black background
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10), // Curved bottom
                ),
              ),
              child: AppBar(
                automaticallyImplyLeading: true,
                
                backgroundColor:
                    Colors.transparent, // AppBar blends with the container
                elevation: 0, // No shadow
                // clipBehavior: Clip.none,
                centerTitle: false,
                title: Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
              ),
            ),
          ),

          // Floating Circular Avatar
          Positioned(
            top: 150, // Adjust to make it float between AppBar and body
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                radius: 50, // Avatar size
                backgroundColor: Colors.white, // Border color
                child: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 47, // Inner avatar size
                    backgroundImage: NetworkImage(
                        'https://iwarranty.io/wp-content/uploads/2023/12/Creating-the-Perfect-Passport-size-Photo-Online.jpg'),
                  ),
                ),
              ),
            ),
          ),

          // Body Content
          Positioned.fill(
            top: 280, // Adjust to move below the avatar
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Full Name',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          hintText: 'Enter your name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),
                      Text('Phone Number',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: '080-xxx-xxxxx',
                          // hintText: '080-xxx-xxxxx',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          } else if (value.length < 11) {
                            return 'Phone number must be at least 11 characters long';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),
                      Text('Location Details',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          labelText: 'Location Detail',
                          hintText: 'Enter your address',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your address';
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Handle save changes logic here
                            }
                          },
                          child: Text('Save Changes'),
                        ),
                      ),
                    ],
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
