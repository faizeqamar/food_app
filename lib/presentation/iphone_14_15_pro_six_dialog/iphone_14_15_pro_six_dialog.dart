import 'models/iphone_14_15_pro_six_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_six_provider.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProSixDialog extends StatefulWidget {
  const Iphone1415ProSixDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProSixDialogState createState() => Iphone1415ProSixDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone1415ProSixProvider(),
      child: Iphone1415ProSixDialog(),
    );
  }
}

class Iphone1415ProSixDialogState extends State<Iphone1415ProSixDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 78.v,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          _buildHandSomeAttrac(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHandSomeAttrac(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHandsomeAttrac,
            height: 59.adaptSize,
            width: 59.adaptSize,
            radius: BorderRadius.circular(
              29.h,
            ),
            margin: EdgeInsets.only(bottom: 219.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 9.v,
              bottom: 219.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_jason".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer,
                  ),
                ),
                Container(
                  width: 49.h,
                  margin: EdgeInsets.only(right: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 5.v,
                        ),
                      ),
                      Text(
                        "lbl_4_8".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgChatBubble,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(
              top: 17.v,
              bottom: 233.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPhone,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 17.v,
              bottom: 233.v,
            ),
          ),
        ],
      ),
    );
  }
}
