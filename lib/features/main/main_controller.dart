import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mental/features/main/profile/profile_widget.dart';
import 'package:mental/shared/di/injector.dart';

class MainController extends GetxController {
  final FirebaseAuth _firebaseAuth = getIt();

  int selectedIndex = 0;
  final List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    const ProfileWidget(),
  ];

  void setSelectedIndex(int index) {
    selectedIndex = index;
    update();
  }
}
