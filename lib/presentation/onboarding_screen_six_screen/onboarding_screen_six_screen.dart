import 'models/onboarding_screen_six_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_six_provider.dart';

class OnboardingScreenSixScreen extends StatefulWidget {
  const OnboardingScreenSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenSixScreenState createState() =>
      OnboardingScreenSixScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenSixProvider(),
      child: OnboardingScreenSixScreen(),
    );
  }
}

class OnboardingScreenSixScreenState extends State<OnboardingScreenSixScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 62.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEatingAVariety,
                height: 312.adaptSize,
                width: 312.adaptSize,
              ),
              SizedBox(height: 79.v),
              Text(
                "lbl_trending_foods".tr,
                style: theme.textTheme.headlineMedium,
              ),
              Spacer(
                flex: 56,
              ),
              SizedBox(
                height: 9.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 4.46,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.amber100,
                    dotHeight: 9.v,
                    dotWidth: 9.h,
                  ),
                ),
              ),
              Spacer(
                flex: 43,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_skip".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }
}
