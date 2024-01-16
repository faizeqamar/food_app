import '../iphone_14_15_pro_four_screen/widgets/creditdebitcardcomponent_item_widget.dart';
import 'models/creditdebitcardcomponent_item_model.dart';
import 'models/iphone_14_15_pro_four_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_four_provider.dart';

class Iphone1415ProFourScreen extends StatefulWidget {
  const Iphone1415ProFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProFourScreenState createState() => Iphone1415ProFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone1415ProFourProvider(),
      child: Iphone1415ProFourScreen(),
    );
  }
}

class Iphone1415ProFourScreenState extends State<Iphone1415ProFourScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_payment_options".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 40.v),
              Text(
                "lbl_payment_method".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 33.v),
              _buildCreditDebitCardComponent(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildProceedToPayment(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMultiply,
        margin: EdgeInsets.fromLTRB(27.h, 14.v, 339.h, 14.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreditDebitCardComponent(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Consumer<Iphone1415ProFourProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.5.v),
                  child: SizedBox(
                    width: 273.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.black900.withOpacity(0.12),
                    ),
                  ),
                );
              },
              itemCount: provider.iphone1415ProFourModelObj
                  .creditdebitcardcomponentItemList.length,
              itemBuilder: (context, index) {
                CreditdebitcardcomponentItemModel model = provider
                    .iphone1415ProFourModelObj
                    .creditdebitcardcomponentItemList[index];
                return CreditdebitcardcomponentItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProceedToPayment(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_proceed_to_payment".tr,
      margin: EdgeInsets.only(
        left: 26.h,
        right: 25.h,
        bottom: 50.v,
      ),
    );
  }
}
