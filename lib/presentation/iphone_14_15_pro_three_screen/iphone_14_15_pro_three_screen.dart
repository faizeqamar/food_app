import 'models/iphone_14_15_pro_three_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_three_provider.dart';

class Iphone1415ProThreeScreen extends StatefulWidget {
  const Iphone1415ProThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProThreeScreenState createState() =>
      Iphone1415ProThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone1415ProThreeProvider(),
      child: Iphone1415ProThreeScreen(),
    );
  }
}

class Iphone1415ProThreeScreenState extends State<Iphone1415ProThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 30.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "msg_mcdonald_s_best".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 45.v),
              _buildMcdonaldsBest(context),
              SizedBox(height: 23.v),
              _buildNinetyThree(context),
              SizedBox(height: 36.v),
              Divider(
                color: appTheme.black900.withOpacity(0.12),
                indent: 2.h,
                endIndent: 5.h,
              ),
              SizedBox(height: 37.v),
              _buildNine(context),
              SizedBox(height: 40.v),
              _buildEightyEight(context),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_go_to_checkout".tr,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 2.h,
                ),
              ),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                text: "lbl_add_items".tr,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 2.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMcdonaldsBest(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 22.v,
            ),
            child: Text(
              "lbl_mc_double".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgYyy11,
            height: 57.v,
            width: 75.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 38.v,
            width: 119.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder18,
                    ),
                    child: Container(
                      height: 38.v,
                      width: 119.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 47.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(
                                  12.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 8.h),
                              child: Text(
                                "lbl_1".tr,
                                style: CustomTextStyles.titleMedium19,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Text(
                      "lbl2".tr,
                      style: CustomTextStyles.headlineSmallMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_20_99".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 2.h,
        right: 4.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineBlack9003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_5_pc_chicken_mcnuggets".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 2.v),
                Text(
                  "msg_add_1_for_free_with".tr,
                  style: CustomTextStyles.bodyLargeYellowA700,
                ),
              ],
            ),
          ),
          Container(
            height: 38.v,
            width: 29.h,
            margin: EdgeInsets.symmetric(vertical: 10.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  alignment: Alignment.center,
                  child: CustomImageView(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl2".tr,
                    style: CustomTextStyles.headlineSmallMedium,
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
  Widget _buildEightyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "lbl_subtotal".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Text(
            "lbl_20_99".tr,
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
