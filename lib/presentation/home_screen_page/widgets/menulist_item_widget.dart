import '../models/menulist_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenulistItemWidget extends StatelessWidget {
  MenulistItemWidget(
    this.menulistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MenulistItemModel menulistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184.v,
      width: 159.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 38.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 54.v),
                  Text(
                    menulistItemModelObj.menuItemName!,
                    style: CustomTextStyles.titleSmall15,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      menulistItemModelObj.menuItemPrice!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: menulistItemModelObj?.menuImage,
            height: 108.v,
            width: 143.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 5.h),
          ),
        ],
      ),
    );
  }
}
