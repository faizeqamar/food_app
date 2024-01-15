import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/onboarding_screen_eight_screen/models/onboarding_screen_eight_model.dart';

/// A provider class for the OnboardingScreenEightScreen.
///
/// This provider manages the state of the OnboardingScreenEightScreen, including the
/// current onboardingScreenEightModelObj
class OnboardingScreenEightProvider extends ChangeNotifier {
  OnboardingScreenEightModel onboardingScreenEightModelObj =
      OnboardingScreenEightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
