import 'package:cached_network_image/cached_network_image.dart';
import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

final CollectionReference<Map<String, dynamic>> dangersRef = FirebaseFirestore.instance.collection('dangers');

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Store<AppState> _store;
  int solved = 0;
  List<Danger> dangers = <Danger>[];

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of<AppState>(context, listen: false);
    //_store.dispatch(GetPoints(_store.state.auth.user!.uid));
    //getDangers(_store.state.auth.user!.uid);

    // _store.dispatch(ListenForDangersStart(_store.state.auth.user!.uid));
  }

  Future<List<Danger>> getUserDangers(String uid) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await dangersRef.where('uid', isEqualTo: _store.state.auth.user!.uid).get();
    final List<Danger> dangersData =
        snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> e) => Danger.fromSnapshot(e)).toList();
    return dangersData;
  }

  // getDangers(String uid) {
  //   dangersRef.where('uid', isEqualTo: _store.state.auth.user!.uid).get().then((QuerySnapshot snapshot) {
  //     snapshot.docs.forEach((DocumentSnapshot doc) {
  //       if (kDebugMode) {
  //         print(doc.data());
  //       }
  //     });
  //   });
  // }

  @override
  void dispose() {
    _store.dispatch(const ListenForDangers.done());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return Scaffold(
              body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('dangers')
                    .where('uid', isEqualTo: store.state.auth.user!.uid)
                    .snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.connectionState == ConnectionState.active) {
                    // if (snapshot.data!.docs.isNotEmpty) {
                    dangers = <Danger>[];
                    solved = 0;
                    for (final QueryDocumentSnapshot<Map<String, dynamic>> i in snapshot.data!.docs) {
                      final Danger d = Danger(
                        uid: i.data()['uid'].toString(),
                        category: i.data()['category'].toString(),
                        image: i.data()['image'].toString(),
                        status: i.data()['status'].toString(),
                        location: CurrentLocation(
                          latitude: double.parse(i.data()['latitude'].toString()),
                          longitude: double.parse(i.data()['longitude'].toString()),
                        ),
                      );
                      dangers.add(d);
                      if (i.data()['status'] == 'solved') {
                        solved += 1;
                      }
                    }
                    dangers.sort((Danger a, Danger b) => a.status.compareTo(b.status) * -1);
                    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      stream: FirebaseFirestore.instance
                          .collection('users')
                          .where('uid', isEqualTo: store.state.auth.user!.uid)
                          .snapshots(),
                      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                        final int points = int.parse(snapshot.data!.docs.first.data()['points'].toString());
                        final String? profilePicture =
                            snapshot.data!.docs.first.data()['profilePicture'].toString().length > 5
                                ? snapshot.data!.docs.first.data()['profilePicture'].toString()
                                : null;
                        return SafeArea(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      color: Colors.transparent,
                                      child: const Icon(
                                        Icons.arrow_back_ios_new,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      Navigator.of(context).pop();
                                      StoreProvider.of<AppState>(context).dispatch(const Logout());
                                    },
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      color: Colors.transparent,
                                      child: const Icon(
                                        Icons.logout_outlined,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 140,
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: ClipOval(
                                        child: profilePicture != null //store.state.profilePicture != null
                                            ? CachedNetworkImage(
                                                imageUrl: profilePicture,
                                                //imageUrl:store.state.profilePicture!,
                                                width: 130,
                                                height: 130,
                                                fit: BoxFit.cover,
                                                placeholder: (BuildContext context, String url) => Image.asset(
                                                  'assets/images/avatar.jpg',
                                                  width: 130,
                                                  height: 130,
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                            : Image.asset(
                                                'assets/images/avatar.jpg',
                                                width: 130,
                                                height: 130,
                                                fit: BoxFit.cover,
                                              ),
                                      ),
                                    ),
                                    Positioned(
                                      left: MediaQuery.of(context).size.width / 2 + 30,
                                      top: 90,
                                      child: GestureDetector(
                                        onTap: () {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(UploadProfilePicture(store.state.auth.user!.uid));
                                        },
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 4,
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Icon(
                                              Icons.mode_edit_outline_outlined,
                                              size: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text(
                                  store.state.auth.user!.displayName.toString().toUpperCase(),
                                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Center(
                                child: Text('Points: $points'),
                                //child: Text('Points: ${_store.state.points}'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        const Text(
                                          'Dangers submitted',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          dangers.length.toString(),
                                          //snapshot.data!.docs.length.toString(),
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      '|',
                                      style: TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        const Text(
                                          'Dangers solved',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          solved.toString(),
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2, left: 20, right: 20, bottom: 20),
                                child: Divider(
                                  height: 0.3,
                                  thickness: 1,
                                  color: Colors.black,
                                  indent: 30,
                                  endIndent: 30,
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width: 340,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                          ),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ListView.builder(
                                      padding: const EdgeInsets.only(left: 40, right: 40),
                                      itemCount: dangers.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        final String name = dangers[index].category.split(' ').first;
                                        return Padding(
                                          padding: const EdgeInsets.only(bottom: 20, top: 10),
                                          child: Container(
                                            height: 150,
                                            width: 260,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 2,
                                              ),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Row(
                                                  children: <Widget>[
                                                    // ignore: use_decorated_box
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: dangers[index].status == 'solved'
                                                              ? Colors.green
                                                              : Colors.yellow,
                                                          width: 3,
                                                        ),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: ClipOval(
                                                        child: Image.asset(
                                                          'assets/images/$name.jpg',
                                                          width: 60,
                                                          height: 60,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Text(
                                                          'Type: ${dangers[index].category}',
                                                          style: const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          'Latitude:${dangers[index].location.latitude}',
                                                          style: const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          'Longitude:${dangers[index].location.longitude}',
                                                          style: const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                    // } else {
                    //   return const Center(
                    //     child: Text('Nothing yet'),
                    //   );
                    // }
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            );
          },
        );
      },
    );
  }
}
