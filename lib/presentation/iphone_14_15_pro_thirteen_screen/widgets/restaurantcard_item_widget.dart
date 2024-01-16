import '../models/restaurantcard_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RestaurantcardItemWidget extends StatelessWidget {
  RestaurantcardItemWidget(
    this.restaurantcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RestaurantcardItemModel restaurantcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180.v,
          width: 341.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: restaurantcardItemModelObj?.dishImage,
                height: 180.v,
                width: 341.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: restaurantcardItemModelObj?.favoriteIcon,
                height: 18.v,
                width: 20.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 11.v,
                  right: 12.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurantcardItemModelObj.dishName!,
                  style: CustomTextStyles.titleLarge22,
                ),
                Text(
                  restaurantcardItemModelObj.deliveryFee!,
                  style: CustomTextStyles.bodyMediumBlack900_2,
                ),
              ],
            ),
            Container(
              height: 38.v,
              width: 43.h,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 10.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 38.v,
                      width: 43.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray200,
                        borderRadius: BorderRadius.circular(
                          21.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      restaurantcardItemModelObj.rating!,
                      style: CustomTextStyles.titleSmall15_1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
