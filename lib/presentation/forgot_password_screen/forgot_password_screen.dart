import 'models/forgot_password_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/core/utils/validation_functions.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/forgot_password_provider.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordProvider(),
      child: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 121.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 56.v),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "msg_reset_your_password".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "msg_enter_your_password".tr,
                        style: CustomTextStyles.bodyMediumBlack90013,
                      ),
                    ),
                    SizedBox(height: 82.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Consumer<ForgotPasswordProvider>(
                        builder: (context, provider, child) {
                          return CustomTextFormField(
                            controller: provider.passwordController,
                            hintText: "lbl_password".tr,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                              onTap: () {
                                provider.changePasswordVisibility();
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 20.v, 27.h, 20.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEye,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 55.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: provider.isShowPassword,
                            contentPadding: EdgeInsets.only(
                              left: 30.h,
                              top: 16.v,
                              bottom: 16.v,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Consumer<ForgotPasswordProvider>(
                        builder: (context, provider, child) {
                          return CustomTextFormField(
                            controller: provider.confirmpasswordController,
                            hintText: "msg_confirm_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                              onTap: () {
                                provider.changePasswordVisibility1();
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 20.v, 27.h, 20.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEye,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 55.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: provider.isShowPassword1,
                            contentPadding: EdgeInsets.only(
                              left: 30.h,
                              top: 16.v,
                              bottom: 16.v,
                            ),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      text: "lbl_reset_password".tr,
                      margin: EdgeInsets.only(left: 1.h),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
