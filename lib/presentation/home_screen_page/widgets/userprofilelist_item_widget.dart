import '../models/userprofilelist_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 79.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Column(
            children: [
              Container(
                height: 65.v,
                width: 79.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 4.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup62,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomImageView(
                  imagePath: userprofilelistItemModelObj?.burgerImage,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                userprofilelistItemModelObj.burgerText!,
                style: CustomTextStyles.bodyMediumBlack900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
