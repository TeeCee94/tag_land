import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

    // Widget buildKey({required int index}) {
    // return Container(
    //   height: 150,
    //   width: 150,
    //   child: Image.asset('assets/images/houses/house$index.jpeg',
    //   fit: BoxFit.cover), 
    // );
    // }

     final List<String> imagePaths = [
    'assets/images/houses/house1.jpeg',
    'assets/images/houses/house2.jpeg',
    'assets/images/houses/house3.jpeg',
    'assets/images/houses/house4.jpeg',
    'assets/images/houses/house5.jpeg',
    'assets/images/houses/house6.jpeg',
    'assets/images/houses/house7.jpeg',
    'assets/images/houses/house8.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(),
        title: Text('Details'),
        actions: [
          Icon(Icons.notification_important_outlined)
        ],),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 250,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJLhFr4M0daPFki9CP8_ZYTLxDV9VJi51lig&s',
              fit: BoxFit.cover
              ),
            ),
            SizedBox(height: 5),
            Text('Prime City Estate Amansea, Awka',
            style: TextStyle(
              fontSize: 20,
            ),),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on,
                size: 15,
                color: const Color.fromARGB(255, 159, 11, 1),
                ),
                Text('Cluster Omega, Jakarta',
                style: TextStyle(
                  fontSize: 15,
                ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text('N2,500,000',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
                SizedBox(width: 40),
                Icon(Icons.star, color: const Color.fromARGB(255, 146, 110, 1)),
                Icon(Icons.star, color: const Color.fromARGB(255, 146, 110, 1)),
                Icon(Icons.star, color: const Color.fromARGB(255, 146, 110, 1)),
                Icon(Icons.star, color: const Color.fromARGB(255, 146, 110, 1)),
                Text('(420 Reviews)'),
              ],
            ),
            SizedBox(height: 5),
            Text('Property Details',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 20,
            ),),
            SizedBox(height: 5),
          Container(height: 2, color: const Color.fromARGB(255, 152, 11, 0)),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 113, 100, 100),
                    foregroundColor: Colors.white
                  ),
                onPressed: (){}, 
                child: Text('Chat with Owner',
                ),),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 37, 37, 37),
                    foregroundColor: Colors.black
                  ),
                onPressed: (){}, 
                child: Text('Verify Property',
                style: TextStyle(
                  color: Colors.white
                ),),),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text('The Omega Cluster is present as an expression of non-expression and enthusiasm for a better life as contained in the New Ultimate Design. Presenting maximum natural ligting and air circulation through the inner courtyard and skylights....',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),),
          ),
          Text('Gallery',
          style: TextStyle(
            fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       // for (int index = 1; index <= 5; index++)
          //         buildKey(index: index),
          // SizedBox(width: 5),
          //     ],
          //   )

  //         SingleChildScrollView(
  // scrollDirection: Axis.horizontal,
  // child: Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //   children: [
      
  // ]
//   ),
// )

//             ]
//           ),
//         ),
//     );
  // }
// }

Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spaces images evenly
          children: List.generate(imagePaths.length, (index) {
            return Container(
              key: ValueKey(index), // Unique key for each container
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover, // Ensures image fits well
                ),
              ),
            );
          }),
        ),
            ]
      ),
        )
    );
  }
}