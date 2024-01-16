import 'models/iphone_14_15_pro_nine_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_nine_provider.dart';

class Iphone1415ProNineScreen extends StatefulWidget {
  const Iphone1415ProNineScreen({Key? key}) : super(key: key);

  @override
  Iphone1415ProNineScreenState createState() => Iphone1415ProNineScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone1415ProNineProvider(),
        child: Iphone1415ProNineScreen());
  }
}

class Iphone1415ProNineScreenState extends State<Iphone1415ProNineScreen> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 4.v),
                child: Column(children: [
                  Text("lbl_addresses".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 63.v),
                  _buildAddressEditText(context),
                  SizedBox(height: 28.v),
                  _buildCityEditText(context),
                  SizedBox(height: 28.v),
                  _buildTownValueEditText(context),
                  SizedBox(height: 28.v),
                  _buildStreetValueEditText(context),
                  Spacer(),
                  SizedBox(height: 58.v),
                  _buildSaveButton(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(30.h, 21.v, 341.h, 15.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return Selector<Iphone1415ProNineProvider, TextEditingController?>(
        selector: (context, provider) => provider.addressEditTextController,
        builder: (context, addressEditTextController, child) {
          return CustomTextFormField(
              controller: addressEditTextController,
              hintText: "lbl_address".tr);
        });
  }

  /// Section Widget
  Widget _buildCityEditText(BuildContext context) {
    return Selector<Iphone1415ProNineProvider, TextEditingController?>(
        selector: (context, provider) => provider.cityEditTextController,
        builder: (context, cityEditTextController, child) {
          return CustomTextFormField(
              controller: cityEditTextController, hintText: "lbl_city".tr);
        });
  }

  /// Section Widget
  Widget _buildTownValueEditText(BuildContext context) {
    return Selector<Iphone1415ProNineProvider, TextEditingController?>(
        selector: (context, provider) => provider.townValueEditTextController,
        builder: (context, townValueEditTextController, child) {
          return CustomTextFormField(
              controller: townValueEditTextController, hintText: "lbl_town".tr);
        });
  }

  /// Section Widget
  Widget _buildStreetValueEditText(BuildContext context) {
    return Selector<Iphone1415ProNineProvider, TextEditingController?>(
        selector: (context, provider) => provider.streetValueEditTextController,
        builder: (context, streetValueEditTextController, child) {
          return CustomTextFormField(
              controller: streetValueEditTextController,
              hintText: "lbl_street".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(text: "lbl_save".tr);
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
