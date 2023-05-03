import 'dart:async';

import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/danger_container.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(45.760696, 21.226788),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
  }

  final TextEditingController _searchController = TextEditingController();

  // final Location location = Location();
  //
  // late bool serviceEnabled;
  // late PermissionStatus permissionGranted;
  // late LocationData locationData;

  Set<Marker> markers = <Marker>{};

  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return DangerContainer(
          builder: (BuildContext context, DangerState? dang) {
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
                      markers: markers,
                    ),
                    Positioned(
                      top: 70,
                      left: 65,
                      right: 65,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(10),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              child: const Icon(Icons.filter_alt_outlined),
                            ),
                            labelText: user == null ? 'Category' : user.displayName,
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 65,
                      right: 65,
                      child: Text(
                        dang!.currentLocation == null ? 'Default' : dang.currentLocation!.latitude.toString(),
                      ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: Visibility(
                visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
                child: FloatingActionButton(
                  onPressed: () async {
                    StoreProvider.of<AppState>(context).dispatch(const GetLocation());
                    // serviceEnabled = await location.serviceEnabled();
                    // if (!serviceEnabled) {
                    //   serviceEnabled = await location.requestService();
                    //   if (!serviceEnabled) {
                    //     return;
                    //   }
                    // }
                    //
                    // permissionGranted = await location.hasPermission();
                    // if (permissionGranted == PermissionStatus.denied) {
                    //   permissionGranted = await location.requestPermission();
                    //   if (permissionGranted != PermissionStatus.granted) {
                    //     return;
                    //   }
                    // }
                    // locationData = await location.getLocation();
                    // setState(() async {
                    //   markers.add(
                    //     Marker(
                    //       markerId: MarkerId(locationData.longitude.toString() + locationData.latitude.toString()),
                    //       position: LatLng(locationData.latitude!, locationData.longitude!),
                    //     ),
                    //   );
                    // });
                    // final Map<String, dynamic> newLocation = <String, dynamic>{
                    //   'uid': user!.uid,
                    //   'latitude': locationData.latitude,
                    //   'longitude': locationData.longitude
                    // };
                    // await db
                    //     .collection('userLocations')
                    //     .doc(user.uid)
                    //     .collection('locations')
                    //     .doc(locationData.longitude.toString() + locationData.latitude.toString())
                    //     .set(newLocation);
                  },
                  shape: const CircleBorder(),
                  elevation: 20,
                  backgroundColor: const Color.fromRGBO(80, 151, 255, 1),
                  splashColor: const Color.fromRGBO(11, 68, 112, 1),
                  child: const Icon(
                    Icons.add,
                    size: 35,
                  ),
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
                          onPressed: () async {
                            StoreProvider.of<AppState>(context).dispatch(const Logout());
                          },
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
          },
        );
      },
    );
  }
}
