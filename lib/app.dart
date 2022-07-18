import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mental/global_binding.dart';
import 'package:mental/routes.dart';
import 'package:mental/shared/constants/app_constans.dart';

class MentalApp extends StatelessWidget {
  const MentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'PlusJakartaSans',
        primaryColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: kSecondaryColor),
        ),
      ),
      getPages: routes,
      initialRoute: Routes.intro,
      initialBinding: GlobalBinding(),
    );
  }
}
