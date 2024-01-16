import '../home_screen_page/widgets/menulist_item_widget.dart';
import '../home_screen_page/widgets/userprofilelist_item_widget.dart';
import '../home_screen_page/widgets/viewhierarchylist_item_widget.dart';
import 'models/home_screen_model.dart';
import 'models/menulist_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:faiz_e_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_icon_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_provider.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenPageState createState() => HomeScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenProvider(),
      child: HomeScreenPage(),
    );
  }
}

class HomeScreenPageState extends State<HomeScreenPage> {
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
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Selector<HomeScreenProvider, TextEditingController?>(
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
              SizedBox(height: 19.v),
              _buildUserProfileList(context),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 6.h,
                ),
                child: _buildHotSpotsRow(
                  context,
                  hotSpotsText: "msg_featured_on_super".tr,
                ),
              ),
              SizedBox(height: 13.v),
              _buildViewHierarchyList(context),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 6.h,
                ),
                child: _buildHotSpotsRow(
                  context,
                  hotSpotsText: "lbl_hot_spots".tr,
                ),
              ),
              SizedBox(height: 5.v),
              _buildMenuList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          children: [
            SizedBox(
              width: 89.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_deliver_now".tr,
                      style: CustomTextStyles.bodyMediumff000000,
                    ),
                    TextSpan(
                      text: "lbl_madni_town".tr,
                      style: CustomTextStyles.titleSmallff000000,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgChevronDown,
              margin: EdgeInsets.only(
                left: 2.h,
                top: 29.v,
                bottom: 7.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(20.h, 11.v, 20.h, 7.v),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Row(
            children: [
              AppbarIconbutton(
                imagePath: ImageConstant.imgGroup58,
              ),
              AppbarImage(
                imagePath: ImageConstant.imgImage2,
                margin: EdgeInsets.fromLTRB(7.h, 9.v, 11.h, 8.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 103.v,
        child: Consumer<HomeScreenProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 28.h,
                );
              },
              itemCount:
                  provider.homeScreenModelObj.userprofilelistItemList.length,
              itemBuilder: (context, index) {
                UserprofilelistItemModel model =
                    provider.homeScreenModelObj.userprofilelistItemList[index];
                return UserprofilelistItemWidget(
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
  Widget _buildViewHierarchyList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 190.v,
        child: Consumer<HomeScreenProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 14.h,
                );
              },
              itemCount:
                  provider.homeScreenModelObj.viewhierarchylistItemList.length,
              itemBuilder: (context, index) {
                ViewhierarchylistItemModel model = provider
                    .homeScreenModelObj.viewhierarchylistItemList[index];
                return ViewhierarchylistItemWidget(
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
  Widget _buildMenuList(BuildContext context) {
    return SizedBox(
      height: 184.v,
      child: Consumer<HomeScreenProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 15.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 40.h,
              );
            },
            itemCount: provider.homeScreenModelObj.menulistItemList.length,
            itemBuilder: (context, index) {
              MenulistItemModel model =
                  provider.homeScreenModelObj.menulistItemList[index];
              return MenulistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildHotSpotsRow(
    BuildContext context, {
    required String hotSpotsText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            hotSpotsText,
            style: CustomTextStyles.titleLargeSemiBold.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: CustomIconButton(
            height: 27.v,
            width: 31.h,
            padding: EdgeInsets.all(3.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconArrowBack,
            ),
          ),
        ),
      ],
    );
  }
}
