import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mental/features/main/main_controller.dart';
import 'package:mental/shared/constants/app_constans.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
            padding: EdgeInsets.all(25),
            child:
                controller.widgetOptions.elementAt(controller.selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.view_list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.view_list), label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/profile_icon.svg',
                    color: controller.selectedIndex == 2 ? kAccentColor : null),
                label: ''),
          ],
          currentIndex: controller.selectedIndex,
          selectedItemColor: kAccentColor,
          onTap: (value) => controller.setSelectedIndex(value),
        ),
      );
    });
  }

  AppBar _buildAppBar() {
    switch (controller.selectedIndex) {
      case 0:
        return AppBar(
          title: const Text(
            'Spec list',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        );
      case 1:
        return AppBar(
          title: const Text(
            'Favorite spec list',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        );
      case 2:
        return AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        );

      default:
        return AppBar();
    }
  }
}
