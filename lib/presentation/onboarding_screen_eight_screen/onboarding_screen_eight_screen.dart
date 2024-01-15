import 'models/onboarding_screen_eight_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_eight_provider.dart';

class OnboardingScreenEightScreen extends StatefulWidget {
  const OnboardingScreenEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenEightScreenState createState() =>
      OnboardingScreenEightScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenEightProvider(),
      child: OnboardingScreenEightScreen(),
    );
  }
}

class OnboardingScreenEightScreenState
    extends State<OnboardingScreenEightScreen> {
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
            horizontal: 39.h,
            vertical: 78.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPastaPana1,
                height: 293.adaptSize,
                width: 293.adaptSize,
              ),
              SizedBox(height: 96.v),
              Text(
                "msg_find_nearby_restaurants".tr,
                style: theme.textTheme.headlineMedium,
              ),
              Spacer(),
              SizedBox(height: 94.v),
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
      height: 35.v,
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_skip".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 7.v,
          ),
        ),
      ],
    );
  }
}
