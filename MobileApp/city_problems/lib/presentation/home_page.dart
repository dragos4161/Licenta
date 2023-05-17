// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/location_container.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Future<void> didChangeDependencies() async {
    await StoreProvider.of<AppState>(context).dispatch(const GetLocation());
    super.didChangeDependencies();
  }

  List<String> categories = <String>[
    'pothole',
    'overturned trash can',
    'destroyed bench',
    'dangerous building',
    'broken traffic light',
    'missing sign'
  ];

  final TextEditingController _searchController = TextEditingController();

  Set<Marker> markers = <Marker>{};

  FirebaseFirestore db = FirebaseFirestore.instance;
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return LocationContainer(
              builder: (BuildContext context, CurrentLocation? currentLocation) {
                if (store.state.isLoading == true) {
                  return const Center(child: SizedBox(height: 50, child: CircularProgressIndicator()));
                } else {
                  return SafeArea(
                    child: Scaffold(
                      body: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: <Widget>[
                            StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                              stream: FirebaseFirestore.instance.collection('dangers').snapshots(),
                              builder:
                                  (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                                if (snapshot.connectionState == ConnectionState.waiting) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else if (snapshot.connectionState == ConnectionState.active) {
                                  if (snapshot.hasData) {
                                    markers = <Marker>{};
                                    for (int i = 0; i < snapshot.data!.docs.length; i++) {
                                      //print(snapshot.data!.docs[i].data()['uid']);
                                      markers.add(
                                        Marker(
                                          markerId: MarkerId(
                                            snapshot.data!.docs[i].data()['latitude'].toString() +
                                                snapshot.data!.docs[i].data()['longitude'].toString(),
                                          ),
                                          position: LatLng(
                                            double.parse(snapshot.data!.docs[i].data()['latitude'].toString()),
                                            double.parse(snapshot.data!.docs[i].data()['longitude'].toString()),
                                          ),
                                          infoWindow:
                                              InfoWindow(title: snapshot.data!.docs[i].data()['category'].toString()),
                                        ),
                                      );
                                    }
                                  } else {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return GoogleMap(
                                  initialCameraPosition: CameraPosition(
                                    target: LatLng(currentLocation!.latitude, currentLocation.longitude),
                                    zoom: 14.4746,
                                  ),
                                  myLocationEnabled: true,
                                  mapType: MapType.hybrid,
                                  markers: markers,
                                  onMapCreated: (GoogleMapController controller) {
                                    _controller.complete(controller);
                                    mapController = controller;
                                  },
                                );
                              },
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
                          ],
                        ),
                      ),
                      floatingActionButton: Visibility(
                        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
                        child: FloatingActionButton(
                          onPressed: () {

                            Navigator.of(context).pushNamed('/categories');
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
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/profile');
                                  },
                                  splashColor: Colors.white,
                                  child: const Icon(Icons.person_outline_rounded),
                                ),
                                MaterialButton(
                                  onPressed: () async {
                                    StoreProvider.of<AppState>(context).dispatch(const Logout());
                                  },
                                  splashColor: Colors.white,
                                  child: const Icon(Icons.messenger_outline_rounded),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            );
          },
        );
      },
    );
  }
}
