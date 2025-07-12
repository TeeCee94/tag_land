import 'package:flutter/material.dart';
// import 'package:tag_land/screens/homepage.dart';
import 'package:tag_land/widgets/bottomnavbar_widget.dart';
import 'package:tag_land/widgets/location_input.dart';

class FindLocation extends StatelessWidget {
  const FindLocation({super.key});

  final bool _isGettingLocation = false; // Define the variable
  // final dynamic locationData = null; // Define locationData

  @override
  Widget build(BuildContext context) {
    Widget previewContent =  Text('No location chosen');

    if (_isGettingLocation) {
      previewContent = const CircularProgressIndicator();
    // } else if (locationData == null) {
    //   previewContent = Text('No location chosen');
    // } else {
    //   previewContent = Text('Location chosen');
    // }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Find Location',
        // style: TextStyle(
        //   fontWeight: FontWeight.bold
        // ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 142, 10, 0),
                width: 1,
              ),
            ),
            child: Center(
              child: previewContent,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          LocationInput(),
                   Text('Saved Address',
          style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20),
          ),
          ListTile(
            // dense: true,
            // hoverColor: Colors.amber,
            onTap: (){},
            leading: CircleAvatar(
              // backgroundColor: Colors.black,
              radius: 30,
              child: Icon(Icons.location_on,
              color: const Color.fromARGB(255, 125, 10, 1),),
            ),
            title: Text('Main Address',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            subtitle: Text('Palm Groove Road, Ikeja Lagos'),
            // make title and subtitle dynamic
            trailing: Icon(Icons.arrow_forward,
            color: const Color.fromARGB(255, 142, 10, 0),),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 152, 11, 1),
              foregroundColor: Colors.white
            ),
             onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => BottomnavbarWidget()));
             }, 
            child: Text('Choose Address'),
            ),
        ],
      ),
    );
  }
}
