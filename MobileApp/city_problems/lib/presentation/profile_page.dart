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
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data!.docs[index]['category'].toString()),
                      );
                    },
                  );
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
