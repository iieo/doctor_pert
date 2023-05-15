import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:g_recaptcha_v3/g_recaptcha_v3.dart';

class EmailNotVerifiedException implements Exception {}

void initRecaptcha() async {
  if (kIsWeb) {
    bool ready = await GRecaptchaV3.ready(
        "6LfxPAwmAAAAANBubVzTuAkqRyxq0PNH37i7Swk8",
        showBadge: true); //--2
    // ignore: avoid_print
    print("Is Recaptcha ready? $ready");
  }
}

void generateToken() async {
  String? token = await GRecaptchaV3.execute('<your_action>');
  print(token);
  // send token to server and verify
}

class FirebaseAuthHandler {
  static String getFirebaseErrorText(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Wrong password provided for that user.';
      case 'email-already-in-use':
        return 'Email already exists or is invalid';
      case 'invalid-email':
        return 'Email already exists or is invalid';
      case 'weak-password':
        return 'Password is too weak';
      case 'email-not-verified':
        return 'Email not verified. Please check your inbox.';
      case 'missing-email':
        return 'Please enter an email';
      case 'timeout':
        return 'The request timed out. Please try again.';
      default:
        return e.code;
    }
  }

  static Future resendVerificationEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  static bool isUserLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  static Future<bool> isUsersEmailVerified() async {
    if (FirebaseAuth.instance.currentUser == null) {
      return false;
    }

    await FirebaseAuth.instance.currentUser!.reload();

    return FirebaseAuth.instance.currentUser!.emailVerified;
  }

  static Future<void> signInWithGoogle() async {
    // Create a new provider
    GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    // Once signed in, return the UserCredential

    await FirebaseAuth.instance
        .signInWithRedirect(googleProvider)
        .onError((error, stackTrace) => print(error));

    // Or use signInWithRedirect
    //return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
  }

  static Future<void> tryLogin(String email, String password) async {
    UserCredential credentials = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .timeout(const Duration(seconds: 10),
            onTimeout: () => throw FirebaseAuthException(code: "timeout"));

    if (credentials.user == null || !credentials.user!.emailVerified) {
      await FirebaseAuth.instance.signOut();
      throw EmailNotVerifiedException();
    }
  }

  static Future<void> trySignup(
      String name, String email, String password) async {
    generateToken();

    UserCredential credentials = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .timeout(const Duration(seconds: 15),
            onTimeout: () => throw FirebaseAuthException(code: "timeout"));

    if (credentials.user == null) {
      return;
    }

    await credentials.user!.sendEmailVerification();
    await credentials.user!.updateDisplayName(name);
    FirebaseFirestore.instance.collection('users').doc(credentials.user!.uid);
  }

  static Future<void> forgotPassword(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email).timeout(
        const Duration(seconds: 15),
        onTimeout: () => throw FirebaseAuthException(code: "timeout"));
  }

  static Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  static Future<void> deleteAccount() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
