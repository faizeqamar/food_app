import 'models/iphone_14_15_pro_five_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/core/utils/validation_functions.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_five_provider.dart';

class Iphone1415ProFiveScreen extends StatefulWidget {
  const Iphone1415ProFiveScreen({Key? key}) : super(key: key);

  @override
  Iphone1415ProFiveScreenState createState() => Iphone1415ProFiveScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone1415ProFiveProvider(),
        child: Iphone1415ProFiveScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone1415ProFiveScreenState extends State<Iphone1415ProFiveScreen> {
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
                                horizontal: 26.h, vertical: 2.v),
                            child: Column(children: [
                              Text("lbl_add_card".tr,
                                  style: theme.textTheme.headlineMedium),
                              SizedBox(height: 37.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("lbl_name_on_card".tr,
                                          style: theme.textTheme.titleLarge))),
                              SizedBox(height: 14.v),
                              Selector<Iphone1415ProFiveProvider,
                                      TextEditingController?>(
                                  selector: (context, provider) =>
                                      provider.nameController,
                                  builder: (context, nameController, child) {
                                    return CustomTextFormField(
                                        controller: nameController,
                                        hintText: "lbl_name".tr,
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "err_msg_please_enter_valid_text"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 23.h, vertical: 11.v),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillBlueGrayC,
                                        filled: true,
                                        fillColor: appTheme.blueGray1007c);
                                  }),
                              SizedBox(height: 27.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("lbl_card_number".tr,
                                          style: theme.textTheme.titleLarge))),
                              SizedBox(height: 14.v),
                              _buildCreditCardRow(context),
                              SizedBox(height: 30.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("lbl_exp_date".tr,
                                          style: theme.textTheme.titleLarge))),
                              SizedBox(height: 11.v),
                              _buildMmYyRow(context),
                              SizedBox(height: 28.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("lbl_cvv".tr,
                                          style: theme.textTheme.titleLarge))),
                              SizedBox(height: 13.v),
                              Selector<Iphone1415ProFiveProvider,
                                      TextEditingController?>(
                                  selector: (context, provider) =>
                                      provider.cvvController,
                                  builder: (context, cvvController, child) {
                                    return CustomTextFormField(
                                        controller: cvvController,
                                        hintText: "lbl_123".tr,
                                        hintStyle:
                                            CustomTextStyles.titleLargeBlack900,
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 11.v, 20.h, 10.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgHelp,
                                                height: 26.adaptSize,
                                                width: 26.adaptSize)),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 47.v),
                                        contentPadding: EdgeInsets.only(
                                            left: 22.h, top: 8.v, bottom: 8.v),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillBlueGrayC,
                                        filled: true,
                                        fillColor: appTheme.blueGray1007c);
                                  }),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildCheckoutButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(27.h, 21.v, 344.h, 15.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildCreditCardRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
        decoration: AppDecoration.fillBlueGrayC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCreditCard,
              height: 26.adaptSize,
              width: 26.adaptSize,
              margin: EdgeInsets.only(left: 2.h, top: 2.v, bottom: 1.v)),
          CustomImageView(
              imagePath: ImageConstant.imgCamera,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.only(top: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildMmYyRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
        decoration: AppDecoration.fillBlueGrayC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_mm_yy".tr, style: CustomTextStyles.titleLargeBlack900_1),
          CustomImageView(
              imagePath: ImageConstant.imgHelp,
              height: 26.adaptSize,
              width: 26.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildCheckoutButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_checkout".tr,
        margin: EdgeInsets.only(left: 26.h, right: 25.h, bottom: 49.v));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
