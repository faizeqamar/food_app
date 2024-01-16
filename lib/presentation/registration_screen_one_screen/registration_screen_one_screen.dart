import 'models/registration_screen_one_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/core/utils/validation_functions.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_outlined_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/registration_screen_one_provider.dart';
import 'package:faiz_e_s_application1/domain/googleauth/google_auth_helper.dart';
import 'package:faiz_e_s_application1/domain/facebookauth/facebook_auth_helper.dart';

class RegistrationScreenOneScreen extends StatefulWidget {
  const RegistrationScreenOneScreen({Key? key}) : super(key: key);

  @override
  RegistrationScreenOneScreenState createState() =>
      RegistrationScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegistrationScreenOneProvider(),
        child: RegistrationScreenOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class RegistrationScreenOneScreenState
    extends State<RegistrationScreenOneScreen> {
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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.h, vertical: 52.v),
                            child: Column(children: [
                              SizedBox(height: 16.v),
                              SizedBox(
                                  height: 66.v,
                                  width: 147.h,
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                height: 9.v,
                                                width: 57.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 10.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowDown,
                                                          height: 9.v,
                                                          width: 57.h,
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          height: 1.v,
                                                          width: 29.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 2.v,
                                                                  right: 2.h))
                                                    ]))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgSettings,
                                            height: 28.v,
                                            width: 90.h,
                                            alignment: Alignment.bottomLeft),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector19x122,
                                            height: 13.v,
                                            width: 82.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                                left: 4.h, bottom: 18.v)),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                height: 37.v,
                                                width: 88.h,
                                                margin:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgUser,
                                                          height: 37.v,
                                                          width: 88.h,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          6.v),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgSignal,
                                                                        height: 10
                                                                            .adaptSize,
                                                                        width: 10
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            bottom:
                                                                                6.v)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgSignalErrorcontainer,
                                                                        height: 8
                                                                            .adaptSize,
                                                                        width: 8
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                17.h,
                                                                            top: 9.v))
                                                                  ])))
                                                    ])))
                                      ])),
                              SizedBox(height: 16.v),
                              Text("lbl_super_foodoo".tr,
                                  style: CustomTextStyles
                                      .titleMediumDeeporange300),
                              SizedBox(height: 46.v),
                              _buildEmail(context),
                              SizedBox(height: 28.v),
                              _buildEditText(context),
                              SizedBox(height: 22.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 16.h),
                                      child: Text("msg_forget_password".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack900))),
                              SizedBox(height: 19.v),
                              _buildLoginButton(context),
                              SizedBox(height: 33.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 17.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 11.v, bottom: 10.v),
                                            child: SizedBox(
                                                width: 125.h,
                                                child: Divider())),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 17.h),
                                            child: Text("lbl_or2".tr,
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 11.v, bottom: 10.v),
                                            child: SizedBox(
                                                width: 143.h,
                                                child: Divider(
                                                    color: appTheme.black900
                                                        .withOpacity(0.73),
                                                    indent: 17.h)))
                                      ])),
                              SizedBox(height: 32.v),
                              _buildLoginWithGoogleButton(context),
                              SizedBox(height: 21.v),
                              _buildLoginWithFacebookButton(context),
                              SizedBox(height: 74.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff00000013),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style: theme.textTheme.labelLarge)
                                  ]),
                                  textAlign: TextAlign.left)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<RegistrationScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Selector<RegistrationScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.editTextController,
        builder: (context, editTextController, child) {
          return CustomTextFormField(
              controller: editTextController,
              textInputAction: TextInputAction.done,
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(text: "lbl_login".tr);
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 21.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapLoginWithGoogleButton(context);
        });
  }

  /// Section Widget
  Widget _buildLoginWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_login_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 21.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapLoginWithFacebookButton(context);
        });
  }

  onTapLoginWithGoogleButton(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapLoginWithFacebookButton(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
