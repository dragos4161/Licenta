import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/location_container.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<String> categories = <String>[
    'pothole',
    'overturned trash can',
    'destroyed bench',
    'dangerous building',
    'broken traffic light',
    'missing sign'
  ];

  void _onResponseCategories(dynamic action) {
    if (action is PostDangerSuccessful) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Center(
            child: Text(
              'Posted successfully',
              style: TextStyle(color: Colors.greenAccent),
            ),
          ),
          backgroundColor: Colors.grey,
        ),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return LocationContainer(
      builder: (BuildContext context, CurrentLocation? currentLocation) {
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height - 50,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 60,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(80, 151, 255, 1),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Types',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 180,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: GestureDetector(
                                        onTap: () async {
                                          late final Danger postDanger;
                                          await StoreProvider.of<AppState>(context).dispatch(const TakePicture());
                                          while (store.state.danger.currentDangerUrl == null) {
                                            await Future<void>.delayed(const Duration(seconds: 1));
                                          }
                                          postDanger = Danger(
                                            category: 'dangerous building',
                                            uid: user!.uid,
                                            location: currentLocation!,
                                            image: store.state.danger.currentDangerUrl,
                                          );
                                          if (!mounted) {
                                            return;
                                          }
                                          await StoreProvider.of<AppState>(context)
                                              .dispatch(PostDanger(postDanger, _onResponseCategories));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                          height: 140,
                                          width: 100,
                                          child: const Image(
                                            image: AssetImage('assets/images/dangerous.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 110,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: GestureDetector(
                                        onTap: () async {
                                          late final Danger postDanger;
                                          await StoreProvider.of<AppState>(context).dispatch(const TakePicture());
                                          while (store.state.danger.currentDangerUrl == null) {
                                            await Future<void>.delayed(const Duration(seconds: 1));
                                          }
                                          postDanger = Danger(
                                            category: 'destroyed bench',
                                            uid: user!.uid,
                                            location: currentLocation!,
                                            image: store.state.danger.currentDangerUrl,
                                          );
                                          if (!mounted) {
                                            return;
                                          }
                                          await StoreProvider.of<AppState>(context)
                                              .dispatch(PostDanger(postDanger, _onResponseCategories));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                          height: 70,
                                          width: 100,
                                          child: const Image(
                                            image: AssetImage('assets/images/destroyed.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 160,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: GestureDetector(
                                        onTap: () async {
                                          late final Danger postDanger;
                                          await StoreProvider.of<AppState>(context).dispatch(const TakePicture());
                                          while (store.state.danger.currentDangerUrl == null) {
                                            await Future<void>.delayed(const Duration(seconds: 1));
                                          }
                                          postDanger = Danger(
                                            category: 'broken traffic light',
                                            uid: user!.uid,
                                            location: currentLocation!,
                                            image: store.state.danger.currentDangerUrl,
                                          );
                                          if (!mounted) {
                                            return;
                                          }
                                          await StoreProvider.of<AppState>(context)
                                              .dispatch(PostDanger(postDanger, _onResponseCategories));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                          height: 120,
                                          width: 100,
                                          child: const Image(
                                            image: AssetImage('assets/images/broken.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 110,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: GestureDetector(
                                        onTap: () async {
                                          late final Danger postDanger;
                                          await StoreProvider.of<AppState>(context).dispatch(const TakePicture());
                                          while (store.state.danger.currentDangerUrl == null) {
                                            await Future<void>.delayed(const Duration(seconds: 1));
                                          }
                                          postDanger = Danger(
                                            category: 'overturned trash can',
                                            uid: user!.uid,
                                            location: currentLocation!,
                                            image: store.state.danger.currentDangerUrl,
                                          );
                                          if (!mounted) {
                                            return;
                                          }
                                          await StoreProvider.of<AppState>(context)
                                              .dispatch(PostDanger(postDanger, _onResponseCategories));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                          height: 70,
                                          width: 100,
                                          child: const Image(
                                            image: AssetImage('assets/images/overturned.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: GestureDetector(
                                        onTap: () async {
                                          late final Danger postDanger;
                                          await StoreProvider.of<AppState>(context).dispatch(const TakePicture());
                                          while (store.state.danger.currentDangerUrl == null) {
                                            await Future<void>.delayed(const Duration(seconds: 1));
                                          }
                                          postDanger = Danger(
                                            category: 'missing sign',
                                            uid: user!.uid,
                                            location: currentLocation!,
                                            image: store.state.danger.currentDangerUrl,
                                          );
                                          if (!mounted) {
                                            return;
                                          }
                                          await StoreProvider.of<AppState>(context)
                                              .dispatch(PostDanger(postDanger, _onResponseCategories));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                          height: 140,
                                          width: 100,
                                          child: const Image(
                                            image: AssetImage('assets/images/missing.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    height: 140,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                    ),
                                    child: GestureDetector(
                                      onTap: () async {
                                        late final Danger postDanger;
                                        await StoreProvider.of<AppState>(context).dispatch(const TakePicture());
                                        while (store.state.danger.currentDangerUrl == null) {
                                          await Future<void>.delayed(const Duration(seconds: 1));
                                        }
                                        postDanger = Danger(
                                          category: 'pothole',
                                          uid: user!.uid,
                                          location: currentLocation!,
                                          image: store.state.danger.currentDangerUrl,
                                        );
                                        if (!mounted) {
                                          return;
                                        }
                                        await StoreProvider.of<AppState>(context)
                                            .dispatch(PostDanger(postDanger, _onResponseCategories));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                          height: 100,
                                          width: 100,
                                          child: const Image(
                                            image: AssetImage('assets/images/pothole.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
