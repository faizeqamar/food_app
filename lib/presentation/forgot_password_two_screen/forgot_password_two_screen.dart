import 'models/forgot_password_two_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/forgot_password_two_provider.dart';

class ForgotPasswordTwoScreen extends StatefulWidget {
  const ForgotPasswordTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordTwoScreenState createState() => ForgotPasswordTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordTwoProvider(),
      child: ForgotPasswordTwoScreen(),
    );
  }
}

class ForgotPasswordTwoScreenState extends State<ForgotPasswordTwoScreen> {
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
                flex: 30,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder40,
                ),
                child: Container(
                  height: 81.adaptSize,
                  width: 81.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 25.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder40,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 31.v,
                        width: 26.h,
                        alignment: Alignment.centerRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              Text(
                "msg_password_updated".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 17.v),
              SizedBox(
                width: 190.h,
                child: Text(
                  "msg_congratulation_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBlack90013.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Spacer(
                flex: 69,
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
