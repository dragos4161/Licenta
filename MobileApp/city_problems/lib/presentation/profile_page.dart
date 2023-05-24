import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
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
                if (snapshot.data!.docs.isNotEmpty) {
                  dangers = <Danger>[];
                  solved = 0;
                  for (QueryDocumentSnapshot<Map<String, dynamic>> i in snapshot.data!.docs) {
                    final Danger d = Danger(
                      uid: i.data()['uid'].toString(),
                      category: i.data()['category'].toString(),
                      image: i.data()['image'].toString(),
                      status: i.data()['status'].toString(),
                      location: CurrentLocation(
                          latitude: double.parse(i.data()['latitude'].toString()),
                          longitude: double.parse(i.data()['longitude'].toString())),
                    );
                    dangers.add(d);
                    if (i.data()['status'] == 'solved') {
                      solved += 1;
                    }
                  }
                  return SafeArea(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 5,
                            ),
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
                          ],
                        ),
                        SizedBox(
                          height: 140,
                          child: Stack(
                            children: <Widget>[
                              Center(
                                child: ClipOval(
                                  child: Image.asset(
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
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Center(
                                          child: Text('works'),
                                        ),
                                      ),
                                    );
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
                        const Center(
                          child: Text('Points: '),
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
                      ],
                    ),
                  );
                  // return ListView.builder(
                  //   itemCount: snapshot.data!.docs.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return ListTile(
                  //       title: Text(snapshot.data!.docs[index]['category'].toString()),
                  //     );
                  //   },
                  // );
                } else {
                  return const Center(
                    child: Text('Nothing yet'),
                  );
                }
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
  }
}
