import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental/features/intro/intro_controller.dart';
import 'package:mental/shared/constants/app_constans.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<IntroController>(builder: (controller) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            'assets/images/mental_logo.jpg',
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}
