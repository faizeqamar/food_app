import 'models/forgot_password_three_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/forgot_password_three_provider.dart';

class ForgotPasswordThreeScreen extends StatefulWidget {
  const ForgotPasswordThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordThreeScreenState createState() =>
      ForgotPasswordThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordThreeProvider(),
      child: ForgotPasswordThreeScreen(),
    );
  }
}

class ForgotPasswordThreeScreenState extends State<ForgotPasswordThreeScreen> {
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
            horizontal: 25.h,
            vertical: 121.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 35,
              ),
              Container(
                height: 81.adaptSize,
                width: 81.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 26.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder40,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  height: 29.v,
                  width: 36.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 22.v),
              Text(
                "lbl_check_email".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 221.h,
                child: Text(
                  "msg_please_check_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBlack90013.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_email_not_received2".tr,
                      style: CustomTextStyles.bodyMediumff00000013,
                    ),
                    TextSpan(
                      text: "lbl_resubmit".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              Spacer(
                flex: 64,
              ),
              CustomElevatedButton(
                text: "lbl_continue".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
