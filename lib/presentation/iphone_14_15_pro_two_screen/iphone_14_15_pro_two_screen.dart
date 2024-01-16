import 'models/iphone_14_15_pro_two_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_two_provider.dart';

class Iphone1415ProTwoScreen extends StatefulWidget {
  const Iphone1415ProTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProTwoScreenState createState() => Iphone1415ProTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone1415ProTwoProvider(),
      child: Iphone1415ProTwoScreen(),
    );
  }
}

class Iphone1415ProTwoScreenState extends State<Iphone1415ProTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 539.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup84,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 58.v),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder31,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 23.v),
                          Text(
                            "lbl_mc_double".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          SizedBox(height: 14.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 74.h,
                                margin: EdgeInsets.only(top: 1.v),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgClock,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                    ),
                                    Text(
                                      "lbl_50_min".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 47.h,
                                margin: EdgeInsets.only(
                                  left: 28.h,
                                  top: 1.v,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgSignalSecondarycontainer,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "lbl_4_6".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 74.h,
                                margin: EdgeInsets.only(left: 28.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFire,
                                      height: 22.v,
                                      width: 18.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "lbl_290_cal".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          Text(
                            "lbl_20_99".tr,
                            style: CustomTextStyles.headlineMedium28,
                          ),
                          SizedBox(height: 22.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text(
                                "msg_mc_double_comes".tr,
                                style: CustomTextStyles.titleLargeSemiBold,
                              ),
                            ),
                          ),
                          SizedBox(height: 6.v),
                          _buildKetchupRow(context),
                          SizedBox(height: 9.v),
                          _buildCheeseRow(context),
                          SizedBox(height: 16.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text(
                                "msg_frequently_bought".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildFrenchFriesRow(context),
                          SizedBox(height: 10.v),
                          CustomElevatedButton(
                            text: "lbl_add_1_to_cart".tr,
                            margin: EdgeInsets.only(
                              left: 26.h,
                              right: 25.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgYyy11,
                    height: 207.v,
                    width: 273.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 82.v),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 82.v,
      leadingWidth: 63.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgIconArrowBackBlack90034x39,
        margin: EdgeInsets.only(
          left: 24.h,
          bottom: 1.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUserOnprimarycontainer,
          margin: EdgeInsets.only(
            left: 22.h,
            top: 1.v,
            right: 22.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildKetchupRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack9001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_ketchup".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "lbl".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Container(
                  height: 21.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                    bottom: 1.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 19.adaptSize,
                          width: 19.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(
                              9.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_1".tr,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "lbl2".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheeseRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack9001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 13.v),
            child: Text(
              "lbl_cheese".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 7.v),
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "lbl".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Container(
                  height: 21.v,
                  width: 19.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                    bottom: 1.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 19.adaptSize,
                          width: 19.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(
                              9.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_1".tr,
                          style: CustomTextStyles.labelLargeBlack900Medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "lbl2".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrenchFriesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_french_fries".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_5_67".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Container(
            height: 90.v,
            width: 103.h,
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineBlack9002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgPngwing4,
              height: 74.v,
              width: 60.h,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
