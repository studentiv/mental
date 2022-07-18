import 'package:get/get.dart';
import 'package:mental/features/auth/auth_screen.dart';
import 'package:mental/features/intro/intro_screen.dart';
import 'package:mental/features/main/main_screen.dart';

final routes = [
  GetPage(name: Routes.intro, page: () => const IntroScreen()),
  GetPage(name: Routes.auth, page: () => const AuthScreen()),
  GetPage(name: Routes.main, page: () => const MainScreen()),
];

mixin Routes {
  static const intro = '/';
  static const auth = '/auth';
  static const main = '/main';
}
