import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental/routes.dart';
import 'package:mental/shared/di/injector.dart';
import 'package:mental/shared/until/local_data.dart';

class AuthController extends GetxController {
  final FirebaseAuth _firebaseAuth = getIt();
  final LocalData localData = getIt();
  bool isLoginPage = true;

  final emailFieldKey = GlobalKey<FormState>();
  final passwordFieldKey = GlobalKey<FormState>();

  String emailAddress = '';
  String password = '';
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

  bool validate() {
    if (emailFieldKey.currentState!.validate() &&
        passwordFieldKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> signIn() async {
    if (validate()) {
      try {
        final credential = await _firebaseAuth.signInWithEmailAndPassword(
            email: emailAddress, password: password);
        Get.offAndToNamed(Routes.main);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }

  void signUp() async {
    try {
      final user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      // localData.setUser(user);
      Get.offAndToNamed(Routes.main);
    } on FirebaseAuthException catch (e) {
      print(e);
      e.message;
    }
  }
}
