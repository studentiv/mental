import 'package:get/get.dart';

final phoneMask = '+380 (##) ###-##-##';
final translator = {"#": RegExp(r'[0-9]')};

RegExp emailRegExp() {
  return RegExp(
    r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
  );
}

RegExp phoneRegExp() {
  return RegExp(
    r'(^(?:[+0]9)?[0-9]{10,12}$)',
  );
}

bool isValidEmail(String email) {
  return emailRegExp().hasMatch(email);
}

bool isValidPhone(String phone) {
  return phoneRegExp().hasMatch(phone);
}

String? phoneFieldValidator(String? value, [bool isRequered = true]) {
  if (value == null || value.length == 0) {
    if (isRequered)
      return 'fillFieldMsg'.tr;
    else
      return null;
  } else {
    if (value.length != 9) return 'invalidPhoneMsg'.tr;
    return null;
  }
}

String? emailFieldValidator(String? value, [bool isRequered = true]) {
  if (value == null || value.length == 0) {
    if (isRequered)
      return 'fill this field';
    else
      return null;
  } else {
    if (!emailRegExp().hasMatch(value)) return 'invalidEmailMsg'.tr;
    return null;
  }
}

String? passwordFieldValidator(String? value, [bool isRequared = true]) {
  if (value == null || value.length < 6) {
    if (isRequared) {
      return 'Password should be at least 6 characters';
    } else {
      return null;
    }
  }
}
