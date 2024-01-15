import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/onboarding_screen_six_screen/models/onboarding_screen_six_model.dart';

/// A provider class for the OnboardingScreenSixScreen.
///
/// This provider manages the state of the OnboardingScreenSixScreen, including the
/// current onboardingScreenSixModelObj
class OnboardingScreenSixProvider extends ChangeNotifier {
  OnboardingScreenSixModel onboardingScreenSixModelObj =
      OnboardingScreenSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
