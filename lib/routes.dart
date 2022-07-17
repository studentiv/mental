import 'package:get/get.dart';
import 'package:mental/features/auth/screens/auth_screen.dart';
import 'package:mental/features/intro/intro_screen.dart';

final routes = [
  GetPage(name: Routes.intro, page: () => const IntroScreen()),
  GetPage(name: Routes.auth, page: () => const SignInScreen()),
];

mixin Routes {
  static const intro = '/';
  static const auth = '/auth';
}
