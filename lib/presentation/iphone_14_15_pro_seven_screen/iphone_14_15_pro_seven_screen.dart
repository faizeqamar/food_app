import 'models/iphone_14_15_pro_seven_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_seven_provider.dart';

class Iphone1415ProSevenScreen extends StatefulWidget {
  const Iphone1415ProSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProSevenScreenState createState() =>
      Iphone1415ProSevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone1415ProSevenProvider(),
      child: Iphone1415ProSevenScreen(),
    );
  }
}

class Iphone1415ProSevenScreenState extends State<Iphone1415ProSevenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgIphone1415Pro,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUserProfile(context),
                Container(
                  margin: EdgeInsets.only(right: 68.h),
                  padding: EdgeInsets.symmetric(vertical: 36.v),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLockAmberA400,
                              height: 18.v,
                              width: 16.h,
                              margin: EdgeInsets.only(bottom: 7.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 33.h),
                              child: Text(
                                "lbl_view_profile".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 27.v),
                      Padding(
                        padding: EdgeInsets.only(left: 35.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Text(
                                "lbl_vouchers_offers".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36.v),
                      Padding(
                        padding: EdgeInsets.only(left: 32.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAmberA400,
                              height: 27.adaptSize,
                              width: 27.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Text(
                                "lbl_addresses".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 23.v,
                              width: 21.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 28.h),
                              child: Text(
                                "lbl_orders".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 34.v),
                      Padding(
                        padding: EdgeInsets.only(left: 36.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgProfile,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 5.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 33.h),
                              child: Text(
                                "lbl_help_center".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Text(
                                "lbl_invite_friends".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Divider(
                        color: appTheme.black900.withOpacity(0.12),
                      ),
                      SizedBox(height: 23.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "lbl_settings".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 26.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "msg_terms_condition".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.only(left: 40.h),
                        child: Text(
                          "lbl_log_out".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 56.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
      width: 325.h,
      margin: EdgeInsets.only(right: 68.h),
      padding: EdgeInsets.symmetric(
        horizontal: 102.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 46.v),
          CustomImageView(
            imagePath: ImageConstant.imgHandsomeAttrac104x110,
            height: 104.v,
            width: 110.h,
            radius: BorderRadius.circular(
              52.h,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            "lbl_jason_norm".tr,
            style: CustomTextStyles.titleMediumSemiBold18,
          ),
        ],
      ),
    );
  }
}
