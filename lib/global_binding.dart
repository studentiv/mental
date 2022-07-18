import 'package:get/get.dart';
import 'package:mental/features/auth/auth_controller.dart';
import 'package:mental/features/intro/intro_controller.dart';
import 'package:mental/features/main/main_controller.dart';
import 'package:mental/features/main/profile/profile_controller.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(controller);

    Get.lazyPut(() => IntroController(), fenix: true);
    Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(() => MainController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
  }
}
