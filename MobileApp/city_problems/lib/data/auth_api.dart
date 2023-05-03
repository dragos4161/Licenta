import 'package:city_problems/models/index.dart';
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

  Future<AppUser> signUp({required String email, required String password, required String displayName}) async {
    final UserCredential credentials = await auth.createUserWithEmailAndPassword(email: email, password: password);

    final User user = credentials.user!;
    final String name = displayName;
    await user.updateDisplayName(name);

    return AppUser(
      uid: user.uid,
      email: email,
      displayName: user.displayName,
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

  Future<DangerLocation?> getLocation() async {
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
    return DangerLocation(latitude: locationData.longitude!, longitude: locationData.latitude!);
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
