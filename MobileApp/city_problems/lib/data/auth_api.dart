import 'package:city_problems/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthApi {
  const AuthApi({required this.auth});

  final FirebaseAuth auth;

  Future<AppUser> login({required String email, required String password}) async {
    final UserCredential credentials = await auth.signInWithEmailAndPassword(email: email, password: password);

    final User user = credentials.user!;

    return AppUser(
      uid: user.uid,
      email: email,
      displayName: user.displayName!,
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
      displayName: user.displayName!,
    );
  }
}
