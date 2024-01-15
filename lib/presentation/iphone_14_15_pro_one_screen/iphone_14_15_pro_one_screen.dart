import '../iphone_14_15_pro_one_screen/widgets/grid_item_widget.dart';
import 'models/grid_item_model.dart';
import 'models/iphone_14_15_pro_one_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_14_15_pro_one_provider.dart';

class Iphone1415ProOneScreen extends StatefulWidget {
  const Iphone1415ProOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProOneScreenState createState() => Iphone1415ProOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone1415ProOneProvider(),
      child: Iphone1415ProOneScreen(),
    );
  }
}

class Iphone1415ProOneScreenState extends State<Iphone1415ProOneScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child:
                    Selector<Iphone1415ProOneProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "msg_search_super_foodoo".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 22.v),
              _buildGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconArrowBackBlack900,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 6.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_hot_spots".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {
    return Expanded(
      child: Consumer<Iphone1415ProOneProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 114.v,
              crossAxisCount: 2,
              mainAxisSpacing: 1.h,
              crossAxisSpacing: 1.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: provider.iphone1415ProOneModelObj.gridItemList.length,
            itemBuilder: (context, index) {
              GridItemModel model =
                  provider.iphone1415ProOneModelObj.gridItemList[index];
              return GridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
