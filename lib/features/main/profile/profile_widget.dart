import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental/features/main/profile/profile_controller.dart';

class ProfileWidget extends GetView<ProfileController> {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Email:'),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: TextFormField(
                  initialValue: controller.user!.email,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(onPressed: controller.test, child: Text('sss'))
        ],
      );
    });
  }
}
