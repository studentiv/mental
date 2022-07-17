import 'package:get/get.dart';
import 'package:mental/routes.dart';
import 'package:mental/shared/di/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroController extends GetxController {
  final sharedPreferences = getIt<SharedPreferences>();

  String? email;
  String? password;

  @override
  void onInit() {
    super.onInit();
    authCheck();
  }

  void authCheck() {
    email = sharedPreferences.getString('email');
    password = sharedPreferences.getString('password');
    if (email != null && password != null) {
    } else {
      Get.toNamed(Routes.auth);
    }
  }
}
