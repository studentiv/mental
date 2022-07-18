import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mental/shared/di/injector.dart';
import 'package:mental/shared/dto/user_dto.dart';
import 'package:mental/shared/until/local_data.dart';

class ProfileController extends GetxController {
  final LocalData _localData = getIt();

  late final UserDTO? user;
  UserDTO? user1;

  @override
  void onInit() {
    user = _localData.user;
    user1 = UserDTO(id: user!.id, email: user!.email, isSpecialist: false);
    super.onInit();
  }

  void test() {
    if (user == user1) {
      return print(true);
    } else {
      return print(false);
    }
  }
}
