import 'models/registration_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'provider/registration_provider.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationProvider(),
      child: RegistrationScreen(),
    );
  }
}

class RegistrationScreenState extends State<RegistrationScreen> {
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
            vertical: 43.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 41.v),
              CustomImageView(
                imagePath: ImageConstant.imgOrderFoodPana,
                height: 327.adaptSize,
                width: 327.adaptSize,
              ),
              SizedBox(height: 50.v),
              Text(
                "msg_welcome_to_super".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 97.v),
              CustomElevatedButton(
                text: "lbl_create_account".tr,
              ),
              SizedBox(height: 13.v),
              CustomOutlinedButton(
                text: "lbl_login".tr,
                buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
              ),
              SizedBox(height: 48.v),
              Container(
                width: 306.h,
                margin: EdgeInsets.symmetric(horizontal: 18.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_by".tr,
                        style: CustomTextStyles.bodyMediumff00000013,
                      ),
                      TextSpan(
                        text: "lbl_registering".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "lbl_or".tr,
                        style: CustomTextStyles.bodyMediumff00000013,
                      ),
                      TextSpan(
                        text: "lbl_login".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "msg_you_have_agreed".tr,
                        style: CustomTextStyles.bodyMediumff00000013,
                      ),
                      TextSpan(
                        text: "msg_terms_and_conditions".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
