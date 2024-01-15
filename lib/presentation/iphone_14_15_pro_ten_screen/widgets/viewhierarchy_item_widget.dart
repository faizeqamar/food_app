import '../models/viewhierarchy_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 197.v,
          width: 351.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: viewhierarchyItemModelObj?.freeItemImage,
                height: 197.v,
                width: 351.h,
                radius: BorderRadius.circular(
                  14.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 12.v,
                    right: 13.h,
                    bottom: 149.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 26.v,
                        width: 176.h,
                        margin: EdgeInsets.only(top: 8.v),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 26.v,
                                width: 176.h,
                                decoration: BoxDecoration(
                                  color: appTheme.yellow600,
                                  borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(13.h),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                viewhierarchyItemModelObj.freeItemText!,
                                style: CustomTextStyles.titleSmall15_1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: viewhierarchyItemModelObj?.freeItemImage2,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(bottom: 4.v),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewhierarchyItemModelObj.offerText!,
                    style: CustomTextStyles.titleLarge22_1,
                  ),
                  Text(
                    viewhierarchyItemModelObj.deliveryFeeText!,
                    style: CustomTextStyles.bodyMediumBlack900_1,
                  ),
                ],
              ),
            ),
            Container(
              height: 38.v,
              width: 43.h,
              margin: EdgeInsets.only(
                left: 61.h,
                top: 6.v,
                bottom: 9.v,
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
                      viewhierarchyItemModelObj.ratingText!,
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
