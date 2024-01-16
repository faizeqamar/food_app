import 'models/iphone_14_15_pro_eight_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/core/utils/validation_functions.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_eight_provider.dart';

class Iphone1415ProEightScreen extends StatefulWidget {
  const Iphone1415ProEightScreen({Key? key}) : super(key: key);

  @override
  Iphone1415ProEightScreenState createState() =>
      Iphone1415ProEightScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone1415ProEightProvider(),
        child: Iphone1415ProEightScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone1415ProEightScreenState extends State<Iphone1415ProEightScreen> {
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
            appBar: _buildAppBar(context),
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
                                horizontal: 25.h, vertical: 3.v),
                            child: Column(children: [
                              Text("lbl_profile".tr,
                                  style: theme.textTheme.headlineMedium),
                              SizedBox(height: 63.v),
                              _buildProfile(context),
                              SizedBox(height: 28.v),
                              _buildEmail(context),
                              SizedBox(height: 28.v),
                              _buildPassword(context),
                              SizedBox(height: 28.v),
                              _buildMobileNumber(context),
                              Spacer(),
                              SizedBox(height: 59.v),
                              _buildSave(context)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(38.h, 21.v, 333.h, 15.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Selector<Iphone1415ProEightProvider, TextEditingController?>(
        selector: (context, provider) => provider.profileController,
        builder: (context, profileController, child) {
          return CustomTextFormField(
              controller: profileController,
              hintText: "lbl_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<Iphone1415ProEightProvider, TextEditingController?>(
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
  Widget _buildPassword(BuildContext context) {
    return Consumer<Iphone1415ProEightProvider>(
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
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 22.h, 22.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 15.adaptSize,
                      width: 15.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 55.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 16.v));
    });
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Selector<Iphone1415ProEightProvider, TextEditingController?>(
        selector: (context, provider) => provider.mobileNumberController,
        builder: (context, mobileNumberController, child) {
          return CustomTextFormField(
              controller: mobileNumberController,
              hintText: "lbl_mobile_number".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(text: "lbl_save".tr);
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
