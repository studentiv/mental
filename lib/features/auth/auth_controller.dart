import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool isLoginPage = true;

  String? emailAddress;
  String? password;
  final ScrollController scrollController = ScrollController();

  void changePage() {
    isLoginPage = !isLoginPage;
    update();
  }

  void setEmailAddress(String emailAddress) {
    this.emailAddress = emailAddress;
  }

  void setPassword(String password) {
    this.password = password;
  }

  Future<void> signIn(String emailAddress, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  void signUp(String emailAddress, String password) {
    _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress, password: password);
  }
}
