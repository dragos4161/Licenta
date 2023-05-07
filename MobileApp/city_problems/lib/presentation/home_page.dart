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
                            GoogleMap(
                              initialCameraPosition: CameraPosition(
                                target: LatLng(currentLocation!.latitude,currentLocation.longitude),
                                zoom: 14.4746,
                              ),
                              myLocationEnabled: true,
                              mapType: MapType.hybrid,
                              onMapCreated: (GoogleMapController controller) {
                                _controller.complete(controller);
                                mapController = controller;
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
                            showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              builder: (BuildContext builder) {
                                return SingleChildScrollView(
                                  child: Container(
                                    color: const Color.fromRGBO(103, 169, 249, 1),
                                    height: MediaQuery.of(context).size.height - 150,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height - 150,
                                          child: GridView.builder(
                                            itemCount: 6,
                                            padding: const EdgeInsets.all(20),
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 20,
                                              crossAxisSpacing: 20,
                                            ),
                                            itemBuilder: (BuildContext context, int index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  color: Colors.yellow,
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                            //StoreProvider.of<AppState>(context).dispatch(const GetLocation());
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
