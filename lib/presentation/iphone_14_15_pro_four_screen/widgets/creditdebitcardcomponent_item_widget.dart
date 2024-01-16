import '../models/creditdebitcardcomponent_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreditdebitcardcomponentItemWidget extends StatelessWidget {
  CreditdebitcardcomponentItemWidget(
    this.creditdebitcardcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreditdebitcardcomponentItemModel creditdebitcardcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 2.v),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Container(
            height: 13.adaptSize,
            width: 13.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
          ),
        ),
        CustomImageView(
          imagePath: creditdebitcardcomponentItemModelObj?.dynamicProperty2,
          height: 26.adaptSize,
          width: 26.adaptSize,
          margin: EdgeInsets.only(left: 25.h),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            bottom: 2.v,
          ),
          child: Text(
            creditdebitcardcomponentItemModelObj.dynamicProperty3!,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
