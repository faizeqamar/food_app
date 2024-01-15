import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/registration_screen_one_screen/models/registration_screen_one_model.dart';

/// A provider class for the RegistrationScreenOneScreen.
///
/// This provider manages the state of the RegistrationScreenOneScreen, including the
/// current registrationScreenOneModelObj

// ignore_for_file: must_be_immutable
class RegistrationScreenOneProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  RegistrationScreenOneModel registrationScreenOneModelObj =
      RegistrationScreenOneModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    editTextController.dispose();
  }
}
