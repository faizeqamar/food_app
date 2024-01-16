import '../iphone_14_15_pro_ten_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/iphone_14_15_pro_ten_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_ten_provider.dart';

class Iphone1415ProTenScreen extends StatefulWidget {
  const Iphone1415ProTenScreen({Key? key}) : super(key: key);

  @override
  Iphone1415ProTenScreenState createState() => Iphone1415ProTenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone1415ProTenProvider(),
        child: Iphone1415ProTenScreen());
  }
}

class Iphone1415ProTenScreenState extends State<Iphone1415ProTenScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(children: [
                  SizedBox(height: 7.v),
                  Text("msg_featured_on_super".tr,
                      style: CustomTextStyles.titleLargeSemiBold22),
                  SizedBox(height: 32.v),
                  _buildViewHierarchy(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(31.h, 21.v, 340.h, 15.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Consumer<Iphone1415ProTenProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 33.v);
                  },
                  itemCount: provider
                      .iphone1415ProTenModelObj.viewhierarchyItemList.length,
                  itemBuilder: (context, index) {
                    ViewhierarchyItemModel model = provider
                        .iphone1415ProTenModelObj.viewhierarchyItemList[index];
                    return ViewhierarchyItemWidget(model);
                  });
            })));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
