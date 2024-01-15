import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/forgot_password_one_screen/models/forgot_password_one_model.dart';

/// A provider class for the ForgotPasswordOneScreen.
///
/// This provider manages the state of the ForgotPasswordOneScreen, including the
/// current forgotPasswordOneModelObj
class ForgotPasswordOneProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  ForgotPasswordOneModel forgotPasswordOneModelObj = ForgotPasswordOneModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
}
