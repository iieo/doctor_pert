import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthHandler {
  static bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
