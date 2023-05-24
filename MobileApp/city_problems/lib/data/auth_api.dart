import 'package:city_problems/models/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:location/location.dart';

class AuthApi {
  const AuthApi({required this.auth});

  final FirebaseAuth auth;

  Future<AppUser> login({required String email, required String password}) async {
    final UserCredential credentials = await auth.signInWithEmailAndPassword(email: email, password: password);

    final User user = credentials.user!;


    return AppUser(
      uid: user.uid,
      email: email,
      displayName: user.displayName,
    );
  }

  Future<void> postUser({required String uid, required String email}) async {
    final FirebaseFirestore store = FirebaseFirestore.instance;
    final Map<String, dynamic> user = <String, dynamic>{
      'uid': uid,
      'email': email,
      'points': 0,
      'submitted': 0,
      'solved': 0,
    };
    await store.collection('users').add(user);
  }

  Future<AppUser> signUp({required String email, required String password, required String displayName}) async {
    final UserCredential credentials = await auth.createUserWithEmailAndPassword(email: email, password: password);

    final User user = credentials.user!;
    final String name = displayName;
    await user.updateDisplayName(name);

    await postUser(uid: user.uid,email: user.email!);

    return AppUser(
      uid: user.uid,
      email: email,
      displayName: name,
    );
  }

  Future<AppUser?> getUser() async {
    final User? user = auth.currentUser;
    if (user == null) {
      return null;
    }
    return AppUser(
      uid: user.uid,
      email: user.email!,
      displayName: user.displayName,
    );
  }

  Future<CurrentLocation?> getLocation() async {
    final Location location = Location();

    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    late LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }
    locationData = await location.getLocation();
    return CurrentLocation(latitude: locationData.latitude!, longitude: locationData.longitude!);
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
