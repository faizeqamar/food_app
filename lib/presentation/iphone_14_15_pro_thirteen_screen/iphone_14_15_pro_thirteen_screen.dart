import '../iphone_14_15_pro_thirteen_screen/widgets/restaurantcard_item_widget.dart';
import 'models/iphone_14_15_pro_thirteen_model.dart';
import 'models/restaurantcard_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_thirteen_provider.dart';

class Iphone1415ProThirteenScreen extends StatefulWidget {
  const Iphone1415ProThirteenScreen({Key? key}) : super(key: key);

  @override
  Iphone1415ProThirteenScreenState createState() =>
      Iphone1415ProThirteenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone1415ProThirteenProvider(),
        child: Iphone1415ProThirteenScreen());
  }
}

class Iphone1415ProThirteenScreenState
    extends State<Iphone1415ProThirteenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 25.h, top: 35.v, right: 25.h),
                child: Consumer<Iphone1415ProThirteenProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 23.v);
                      },
                      itemCount: provider.iphone1415ProThirteenModelObj
                          .restaurantcardItemList.length,
                      itemBuilder: (context, index) {
                        RestaurantcardItemModel model = provider
                            .iphone1415ProThirteenModelObj
                            .restaurantcardItemList[index];
                        return RestaurantcardItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.only(left: 25.h, top: 11.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_favorites".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
