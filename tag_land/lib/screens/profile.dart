import 'package:flutter/material.dart';
import 'package:tag_land/screens/my_profile.dart';
import 'package:tag_land/screens/change_password.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150), // Extended height
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 10, // No shadow
          leading: Text(
            'Profile',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings,
              color: Colors.white),
            ),
          ],
          flexibleSpace:
              Column(mainAxisAlignment: MainAxisAlignment.end, 
              children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage('https://iwarranty.io/wp-content/uploads/2023/12/Creating-the-Perfect-Passport-size-Photo-Online.jpg',
                  // fit: BoxFit.cover
                  ),
                ),
                title: Text('John Akabogu',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.white),),
                subtitle: Text('+234-810-543-8331',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white),),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 171, 12, 1),
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()),);
                    }, 
                    child: Text('Edit Profile'))
              ),
            ),
          ]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Account settings',
            // textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey
            ),),
            SizedBox(height: 15),
            Card(
              surfaceTintColor: const Color.fromARGB(255, 245, 161, 161),
              elevation: 5,
              child: Column(
                children: [
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()),);
              },
              leading: Icon(Icons.person_outline),
              title: Text('My Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.location_on_outlined),
              title: Text('My Address',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()));
              },
              leading: Icon(Icons.lock_open_outlined),
              title: Text('Change Password',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
                ]
              ),
            ),
            SizedBox(height: 40),
            Text('Other',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey
            ),),
            SizedBox(height: 20),
            Card(
              // borderOnForeground: true,
              surfaceTintColor: const Color.fromARGB(255, 245, 161, 161),
              elevation: 5,
              child: Column(
                children: [
            ListTile(
              onTap: (){},
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text('Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.contact_phone_outlined),
              title: Text('Contact Us',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
             ]
              ),
            ),
          ],
        ),
      )
    );
  }
}
