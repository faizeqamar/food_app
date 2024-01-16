import 'models/onboarding_screen_two_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_two_provider.dart';

class OnboardingScreenTwoScreen extends StatefulWidget {
  const OnboardingScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenTwoScreenState createState() =>
      OnboardingScreenTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenTwoProvider(),
      child: OnboardingScreenTwoScreen(),
    );
  }
}

class OnboardingScreenTwoScreenState extends State<OnboardingScreenTwoScreen> {
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
            horizontal: 3.h,
            vertical: 105.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTakeAwayPana1,
                height: 257.v,
                width: 386.h,
              ),
              SizedBox(height: 95.v),
              Text(
                "lbl_fast_delivery".tr,
                style: theme.textTheme.headlineMedium,
              ),
              Spacer(),
              SizedBox(height: 67.v),
              SizedBox(
                height: 9.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: theme.colorScheme.onError,
                    dotHeight: 9.v,
                    dotWidth: 9.h,
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 41.v,
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_skip".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }
}
