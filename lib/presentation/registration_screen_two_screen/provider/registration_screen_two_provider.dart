import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/registration_screen_two_screen/models/registration_screen_two_model.dart';

/// A provider class for the RegistrationScreenTwoScreen.
///
/// This provider manages the state of the RegistrationScreenTwoScreen, including the
/// current registrationScreenTwoModelObj

// ignore_for_file: must_be_immutable
class RegistrationScreenTwoProvider extends ChangeNotifier {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  RegistrationScreenTwoModel registrationScreenTwoModelObj =
      RegistrationScreenTwoModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
    confirmPasswordFieldController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
