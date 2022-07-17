import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mental/features/auth/auth_controller.dart';
import 'package:mental/shared/constants/app_constans.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(builder: (controller) {
        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: controller.scrollController,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SvgPicture.asset('assets/images/auth_bg.svg'),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          controller.isLoginPage ? 'Login' : 'Register',
                          style: kDefaultTextStyle.copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: kPrimaryColor),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(158, 158, 158, 1)
                                  .withOpacity(0.2)),
                          child: TextFormField(
                            onChanged: (value) =>
                                controller.setEmailAddress(value),
                            onTap: () async {
                              await Future.delayed(const Duration(seconds: 1));
                              controller.scrollController.animateTo(180,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                label: Text('Email')),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(158, 158, 158, 1)
                                  .withOpacity(0.2)),
                          child: TextFormField(
                            obscureText: true,
                            onChanged: (value) => controller.setPassword(value),
                            onTap: () async {
                              await Future.delayed(const Duration(seconds: 1));
                              controller.scrollController.animateTo(180,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                label: Text('Password')),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kAccentColor),
                              onPressed: () => controller.isLoginPage
                                  ? controller.signIn(
                                      'email@gmail.com', 'password')
                                  : controller.signUp(
                                      'emailAddress', 'password'),
                              child: Text(
                                controller.isLoginPage ? 'Sign in' : 'Sign up',
                                style: kDefaultTextStyle.copyWith(fontSize: 18),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              MediaQuery.of(context).viewInsets.bottom == 0
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.isLoginPage
                                ? 'Don\'t have an account? '
                                : 'Do you have an account?',
                            style: TextStyle(fontSize: 16),
                          ),
                          TextButton(
                            onPressed: controller.changePage,
                            child: Text(
                              controller.isLoginPage ? 'Register' : 'Login',
                              style: kDefaultTextStyle.copyWith(
                                  color: kAccentColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        );
      }),
    );
  }
}
