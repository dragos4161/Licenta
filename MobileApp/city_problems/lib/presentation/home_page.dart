import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.hybrid,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned(
              top: 70,
              left: 50,
              right: 50,
              child: Container(
                height: 60,
                color: Colors.blue,
                child: const Text('Something'),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        //shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shape: const CircleBorder(),
        elevation: 20,
        backgroundColor: const Color.fromRGBO(80, 151, 255, 1),
        splashColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        elevation: 20,
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {},
                  splashColor: Colors.white,
                  child: const Icon(Icons.person_outline_rounded),
                ),
                MaterialButton(
                  onPressed: () {},
                  splashColor: Colors.white,
                  child: const Icon(Icons.messenger_outline_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
