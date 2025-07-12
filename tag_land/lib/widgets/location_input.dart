import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  Location location = Location();
  // Location? _pickedLocation;
  bool _isGettingLocation = false;

  void _getCurrentLocation() async {
    Location location =  Location();
  
bool serviceEnabled;
PermissionStatus permissionGranted;
LocationData locationData;
// print('Location: Latitude: ${locationData.latitude}, Longitude: ${locationData.longitude}');

serviceEnabled = await location.serviceEnabled();
if (!serviceEnabled) {
  serviceEnabled = await location.requestService();
  if (!serviceEnabled) {
    return;
  }
}

permissionGranted = await location.hasPermission();
if (permissionGranted == PermissionStatus.denied) {
  permissionGranted = await location.requestPermission();
  if (permissionGranted != PermissionStatus.granted) {
    return;
  }
}

setState(() {
      _isGettingLocation = true;
});

locationData = await location.getLocation();

setState(() {
      _isGettingLocation = false;
});

print(locationData.latitude);
print(locationData.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              icon: const Icon(Icons.location_on),
              label: Text('Get current location'),
              onPressed: _getCurrentLocation, 
              ),

              TextButton.icon(
              icon: const Icon(Icons.map),
              label: Text('Select on map'),
              onPressed: (){}, 
              ),
          ],
        );
  }
}