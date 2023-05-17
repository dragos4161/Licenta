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
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Posted successful')));
      Navigator.of(context).pushNamed('/home');
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
                padding: const EdgeInsets.only(top: 50),
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height - 50,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 50,
                          child: GridView.builder(
                            itemCount: 6,
                            padding: const EdgeInsets.all(10),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () async {
                                  late final Danger postDanger;
                                  await StoreProvider.of<AppState>(context).dispatch(const TakePicture());
                                  while (store.state.danger.currentDangerUrl == null) {
                                    await Future<void>.delayed(const Duration(seconds: 1));
                                  }
                                  postDanger = Danger(
                                    category: categories[index],
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
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 140,
                                      height: 140,
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/images/${categories[index].split(' ').first}.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: Text(
                                        categories[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
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
