import 'models/app_navigation_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Screen Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Screen Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Screen Eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreenEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration screen Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Ten".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Thirteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Fourteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 & 15 Pro - Nine".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProNineScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
