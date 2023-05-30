// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:ui' as ui;

import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/location_container.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<void> retrieveDeviceToken() async {
    final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    final String? token = await firebaseMessaging.getToken();
    final String uid = StoreProvider.of<AppState>(context).state.auth.user!.uid;
    await FirebaseFirestore.instance.collection('tokens').doc(uid).set(<String,dynamic>{'token' : token});
  }

  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  List<String> categories = <String>[
    'pothole',
    'overturned trash can',
    'destroyed bench',
    'dangerous building',
    'broken traffic light',
    'missing sign'
  ];

  late BitmapDescriptor pothole;
  late BitmapDescriptor overturned;
  late BitmapDescriptor destroyed;
  late BitmapDescriptor dangerous;
  late BitmapDescriptor broken;
  late BitmapDescriptor missing;

  Map<String, BitmapDescriptor> icons = <String, BitmapDescriptor>{};

  @override
  void initState() {
    super.initState();
    initializeMarkers();
    retrieveDeviceToken();
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    final ByteData data = await rootBundle.load(path);
    final ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    final ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  Future<void> initializeMarkers() async {
    final Uint8List upothole = await getBytesFromAsset('assets/images/pothole.png', 150);
    pothole = BitmapDescriptor.fromBytes(upothole);
    final Uint8List uoverturned = await getBytesFromAsset('assets/images/overturned.png', 150);
    overturned = BitmapDescriptor.fromBytes(uoverturned);
    final Uint8List udestroyed = await getBytesFromAsset('assets/images/destroyed.png', 150);
    destroyed = BitmapDescriptor.fromBytes(udestroyed);
    final Uint8List udangerous = await getBytesFromAsset('assets/images/dangerous.png', 150);
    dangerous = BitmapDescriptor.fromBytes(udangerous);
    final Uint8List ubroken = await getBytesFromAsset('assets/images/broken.png', 150);
    broken = BitmapDescriptor.fromBytes(ubroken);
    final Uint8List umissing = await getBytesFromAsset('assets/images/missing.png', 150);
    missing = BitmapDescriptor.fromBytes(umissing);

    icons['pothole'] = pothole;
    icons['overturned'] = overturned;
    icons['destroyed'] = destroyed;
    icons['dangerous'] = dangerous;
    icons['broken'] = broken;
    icons['missing'] = missing;
  }

  @override
  Future<void> didChangeDependencies() async {
    await StoreProvider.of<AppState>(context).dispatch(const GetLocation());
    super.didChangeDependencies();
    //setState(() {});
  }


  Set<Marker> markers = <Marker>{};

  FirebaseFirestore db = FirebaseFirestore.instance;
  late GoogleMapController mapController;
  late String status;
  TextEditingController descriptionController = TextEditingController();
  String dropdownValue = 'submitted';
  List<String> items = <String>[
    'All',
    'submitted',
    'solved',
  ];

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
                  return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                    stream: dropdownValue != 'All'
                        ? FirebaseFirestore.instance
                            .collection('dangers')
                            .where('status', isEqualTo: dropdownValue)
                            .snapshots()
                        : FirebaseFirestore.instance.collection('dangers').snapshots(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.connectionState == ConnectionState.active) {
                        if (snapshot.hasData) {
                          markers = <Marker>{};
                          for (int i = 0; i < snapshot.data!.docs.length; i++) {
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
                                infoWindow: InfoWindow(title: snapshot.data!.docs[i].data()['category'].toString()),
                                icon: icons[snapshot.data!.docs[i].data()['category'].toString().split(' ').first]!,
                              ),
                            );
                          }
                          return SafeArea(
                            child: Scaffold(
                              body: SizedBox(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  children: <Widget>[
                                    GoogleMap(
                                      initialCameraPosition: CameraPosition(
                                        target: LatLng(currentLocation!.latitude, currentLocation.longitude),
                                        zoom: 18,
                                      ),
                                      myLocationEnabled: true,
                                      mapType: MapType.hybrid,
                                      markers: markers,
                                      onMapCreated: (GoogleMapController controller) {
                                        _controller.complete(controller);
                                        mapController = controller;
                                      },
                                    ),
                                    Positioned(
                                      top: 50,
                                      left: 105,
                                      right: 105,
                                      child: Container(
                                        height: MediaQuery.of(context).size.height * 0.05,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: DropdownButton<String>(
                                            value: dropdownValue,
                                            icon: const Icon(Icons.keyboard_arrow_down),
                                            items: items.map((String items) {
                                              return DropdownMenuItem<String>(
                                                value: items,
                                                child: Text(items),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownValue = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                        // child: TextField(
                                        //   controller: _searchController,
                                        //   decoration: InputDecoration(
                                        //     border: InputBorder.none,
                                        //     contentPadding: const EdgeInsets.all(10),
                                        //     suffixIcon: GestureDetector(
                                        //       onTap: () {
                                        //         FocusManager.instance.primaryFocus?.unfocus();
                                        //       },
                                        //       child: const Icon(Icons.filter_alt_outlined),
                                        //     ),
                                        //     labelText: user == null ? 'Category' : user.displayName,
                                        //     labelStyle: const TextStyle(
                                        //       color: Colors.grey,
                                        //       fontSize: 15,
                                        //     ),
                                        //   ),
                                        // ),
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
                                            final DocumentSnapshot<Map<String, dynamic>> doc = await FirebaseFirestore
                                                .instance
                                                .collection('queue')
                                                .doc(user!.uid)
                                                .get();
                                            if (doc.exists) {
                                              status = doc.data()!['status'].toString();
                                              if (status == 'pending' || status == 'active') {
                                                await Navigator.pushNamed(context, '/userchat');
                                              } else {
                                                await showDialog<String>(
                                                  context: context,
                                                  builder: (BuildContext context) => AlertDialog(
                                                    title: const Center(
                                                      child: Text('Write a description'),
                                                    ),
                                                    content: SizedBox(
                                                      height: 40,
                                                      width: 120,
                                                      child: TextField(
                                                        controller: descriptionController,
                                                      ),
                                                    ),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () async {
                                                          final QuerySnapshot<Map<String, dynamic>> img =
                                                              await FirebaseFirestore.instance
                                                                  .collection('users')
                                                                  .where('uid', isEqualTo: user.uid)
                                                                  .get();
                                                          final String image =
                                                              img.docs.first.data()['profilePicture'].toString();
                                                          final Map<String, dynamic> data = <String, dynamic>{
                                                            'uid': user.uid,
                                                            'name': user.displayName,
                                                            'description': descriptionController.text,
                                                            'status': 'pending',
                                                            'image': image,
                                                          };
                                                          await db.collection('queue').doc(user.uid).set(data);
                                                          descriptionController.clear();
                                                          Navigator.pop(context);
                                                          await Navigator.pushNamed(context, '/userchat');
                                                        },
                                                        child: const Text('Yes'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(context, 'No');
                                                        },
                                                        child: const Text('No'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }
                                            } else {
                                              await showDialog<String>(
                                                context: context,
                                                builder: (BuildContext context) => AlertDialog(
                                                  title: const Center(
                                                    child: Text('Write a description'),
                                                  ),
                                                  content: SizedBox(
                                                    height: 40,
                                                    width: 120,
                                                    child: TextField(
                                                      controller: descriptionController,
                                                    ),
                                                  ),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () async {
                                                        final QuerySnapshot<Map<String, dynamic>> img =
                                                            await FirebaseFirestore.instance
                                                                .collection('users')
                                                                .where('uid', isEqualTo: user.uid)
                                                                .get();
                                                        final String image =
                                                            img.docs.first.data()['profilePicture'].toString();
                                                        final Map<String, dynamic> data = <String, dynamic>{
                                                          'uid': user.uid,
                                                          'name': user.displayName,
                                                          'description': descriptionController.text,
                                                          'status': 'pending',
                                                          'image': image,
                                                        };
                                                        await db.collection('queue').doc(user.uid).set(data);
                                                        descriptionController.clear();
                                                        Navigator.pop(context);
                                                        await Navigator.pushNamed(context, '/userchat');
                                                      },
                                                      child: const Text('Yes'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context, 'No');
                                                      },
                                                      child: const Text('No'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
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
                    },
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
