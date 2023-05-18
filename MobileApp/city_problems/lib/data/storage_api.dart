import 'package:city_problems/models/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class StorageApi {
  const StorageApi({required this.storage});

  final FirebaseFirestore storage;

  Future<Danger> postDanger({required Danger danger}) async {
    final Map<String, dynamic> dangerToBePosted = <String, dynamic>{
      'uid': danger.uid,
      'category': danger.category,
      'latitude': danger.location.latitude,
      'longitude': danger.location.longitude,
      'image': danger.image ?? '',
      'status': danger.status,
    };

    try {
      await storage.collection('dangers').add(dangerToBePosted);
    } catch (e) {
      if (kDebugMode) {
        print('There was an error');
      }
    }
    return danger;
  }

  Stream<List<Danger>> listenForDangers(String uid) {
    return storage
        .collection('dangers')
        .where('uid', isEqualTo: uid)
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Danger.fromJson(doc.data()))
          .toList();
    });
  }
}
