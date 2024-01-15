import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/forgot_password_three_screen/models/forgot_password_three_model.dart';

/// A provider class for the ForgotPasswordThreeScreen.
///
/// This provider manages the state of the ForgotPasswordThreeScreen, including the
/// current forgotPasswordThreeModelObj
class ForgotPasswordThreeProvider extends ChangeNotifier {
  ForgotPasswordThreeModel forgotPasswordThreeModelObj =
      ForgotPasswordThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
