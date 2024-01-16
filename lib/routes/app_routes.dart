import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:faiz_e_s_application1/presentation/onboarding_screen_six_screen/onboarding_screen_six_screen.dart';
import 'package:faiz_e_s_application1/presentation/onboarding_screen_two_screen/onboarding_screen_two_screen.dart';
import 'package:faiz_e_s_application1/presentation/onboarding_screen_eight_screen/onboarding_screen_eight_screen.dart';
import 'package:faiz_e_s_application1/presentation/registration_screen/registration_screen.dart';
import 'package:faiz_e_s_application1/presentation/registration_screen_one_screen/registration_screen_one_screen.dart';
import 'package:faiz_e_s_application1/presentation/registration_screen_two_screen/registration_screen_two_screen.dart';
import 'package:faiz_e_s_application1/presentation/forgot_password_one_screen/forgot_password_one_screen.dart';
import 'package:faiz_e_s_application1/presentation/forgot_password_three_screen/forgot_password_three_screen.dart';
import 'package:faiz_e_s_application1/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:faiz_e_s_application1/presentation/forgot_password_two_screen/forgot_password_two_screen.dart';
import 'package:faiz_e_s_application1/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_one_screen/iphone_14_15_pro_one_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_ten_screen/iphone_14_15_pro_ten_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_thirteen_screen/iphone_14_15_pro_thirteen_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_two_screen/iphone_14_15_pro_two_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_fourteen_screen/iphone_14_15_pro_fourteen_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_three_screen/iphone_14_15_pro_three_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_four_screen/iphone_14_15_pro_four_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_five_screen/iphone_14_15_pro_five_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_seven_screen/iphone_14_15_pro_seven_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_eight_screen/iphone_14_15_pro_eight_screen.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_nine_screen/iphone_14_15_pro_nine_screen.dart';
import 'package:faiz_e_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreenSixScreen =
      '/onboarding_screen_six_screen';

  static const String onboardingScreenTwoScreen =
      '/onboarding_screen_two_screen';

  static const String onboardingScreenEightScreen =
      '/onboarding_screen_eight_screen';

  static const String registrationScreen = '/registration_screen';

  static const String registrationScreenOneScreen =
      '/registration_screen_one_screen';

  static const String registrationScreenTwoScreen =
      '/registration_screen_two_screen';

  static const String forgotPasswordOneScreen = '/forgot_password_one_screen';

  static const String forgotPasswordThreeScreen =
      '/forgot_password_three_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordTwoScreen = '/forgot_password_two_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String iphone1415ProOneScreen = '/iphone_14_15_pro_one_screen';

  static const String iphone1415ProTenScreen = '/iphone_14_15_pro_ten_screen';

  static const String iphone1415ProThirteenScreen =
      '/iphone_14_15_pro_thirteen_screen';

  static const String iphone1415ProTwoScreen = '/iphone_14_15_pro_two_screen';

  static const String iphone1415ProFourteenScreen =
      '/iphone_14_15_pro_fourteen_screen';

  static const String iphone1415ProThreeScreen =
      '/iphone_14_15_pro_three_screen';

  static const String iphone1415ProFourScreen = '/iphone_14_15_pro_four_screen';

  static const String iphone1415ProFiveScreen = '/iphone_14_15_pro_five_screen';

  static const String iphone1415ProSevenScreen =
      '/iphone_14_15_pro_seven_screen';

  static const String iphone1415ProEightScreen =
      '/iphone_14_15_pro_eight_screen';

  static const String iphone1415ProNineScreen = '/iphone_14_15_pro_nine_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreenSixScreen: OnboardingScreenSixScreen.builder,
        onboardingScreenTwoScreen: OnboardingScreenTwoScreen.builder,
        onboardingScreenEightScreen: OnboardingScreenEightScreen.builder,
        registrationScreen: RegistrationScreen.builder,
        registrationScreenOneScreen: RegistrationScreenOneScreen.builder,
        registrationScreenTwoScreen: RegistrationScreenTwoScreen.builder,
        forgotPasswordOneScreen: ForgotPasswordOneScreen.builder,
        forgotPasswordThreeScreen: ForgotPasswordThreeScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        forgotPasswordTwoScreen: ForgotPasswordTwoScreen.builder,
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        iphone1415ProOneScreen: Iphone1415ProOneScreen.builder,
        iphone1415ProTenScreen: Iphone1415ProTenScreen.builder,
        iphone1415ProThirteenScreen: Iphone1415ProThirteenScreen.builder,
        iphone1415ProTwoScreen: Iphone1415ProTwoScreen.builder,
        iphone1415ProFourteenScreen: Iphone1415ProFourteenScreen.builder,
        iphone1415ProThreeScreen: Iphone1415ProThreeScreen.builder,
        iphone1415ProFourScreen: Iphone1415ProFourScreen.builder,
        iphone1415ProFiveScreen: Iphone1415ProFiveScreen.builder,
        iphone1415ProSevenScreen: Iphone1415ProSevenScreen.builder,
        iphone1415ProEightScreen: Iphone1415ProEightScreen.builder,
        iphone1415ProNineScreen: Iphone1415ProNineScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
