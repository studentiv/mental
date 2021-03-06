import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mental/app.dart';
import 'package:mental/shared/di/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await configureDependencies();

  runApp(const MentalApp());
}
