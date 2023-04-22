import 'dart:async';

import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
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
    target: LatLng(45.760696, 21.226788),
    zoom: 14.4746,
  );

  @override
  void initState(){
    super.initState();
  }

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
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
                  left: 65,
                  right: 65,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Expanded(
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
                          labelText: user == null ? 'Category':user.email,
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            elevation: 20,
            backgroundColor: const Color.fromRGBO(80, 151, 255, 1),
            splashColor: const Color.fromRGBO(11, 68, 112, 1),
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
      },
    );
  }
}
