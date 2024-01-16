import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_eight_screen/models/iphone_14_15_pro_eight_model.dart';

/// A provider class for the Iphone1415ProEightScreen.
///
/// This provider manages the state of the Iphone1415ProEightScreen, including the
/// current iphone1415ProEightModelObj

// ignore_for_file: must_be_immutable
class Iphone1415ProEightProvider extends ChangeNotifier {
  TextEditingController profileController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  Iphone1415ProEightModel iphone1415ProEightModelObj =
      Iphone1415ProEightModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    profileController.dispose();
    emailController.dispose();
    passwordController.dispose();
    mobileNumberController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
