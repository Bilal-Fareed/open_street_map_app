import 'dart:async';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  //controler used so we can navigate to any point in the google map without loading the google app again and again
  // final Completer<GoogleMapController> _controller = Completer();
  
  // static const CameraPosition initialPosition = CameraPosition(
  //   target: LatLng(28.924558546357932, 75.09037306758532),
  //   );
  
  // static const CameraPosition officePosition = CameraPosition(
  //   tilt: 50,
  //   target: LatLng(24.924558546357932, 67.09037306758532),
  //   zoom: 12
  //   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Google Maps"),
          centerTitle: true,
      ), 
      // body:GoogleMap(
      //   initialCameraPosition: officePosition,
      //   mapType: MapType.normal,
      //   onMapCreated: (GoogleMapController controller)=>{
      //     _controller.complete(controller)
      //   },
      // )
      body: OpenStreetMapSearchAndPick(
        center: LatLong(24.924558546357932, 67.09037306758532),
        onPicked: (pickedData) {
          print(pickedData.latLong.latitude);
          print(pickedData.latLong.longitude);
          print(pickedData.address);
        }
      ),
    );
  }
}