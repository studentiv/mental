import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mental/routes.dart';
import 'package:mental/shared/di/injector.dart';
import 'package:mental/shared/dto/user_dto.dart';
import 'package:mental/shared/until/local_data.dart';

class IntroController extends GetxController {
  final FirebaseAuth _firebaseAuth = getIt();
  final LocalData _localData = getIt();

  @override
  void onReady() {
    load();
    super.onReady();
  }

  void load() async {
    if (_firebaseAuth.currentUser != null) {
      User user = _firebaseAuth.currentUser!;
      await _localData.setUser(
          UserDTO(id: user.uid, email: user.email!, isSpecialist: false));
      Get.offAndToNamed(Routes.main);
    } else {
      Get.offAndToNamed(Routes.auth);
    }
  }
}
