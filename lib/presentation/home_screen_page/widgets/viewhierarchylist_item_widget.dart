import '../models/viewhierarchylist_item_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(
    this.viewhierarchylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 255.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            SizedBox(
              height: 142.v,
              width: 255.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: viewhierarchylistItemModelObj?.freeItemImage,
                    height: 142.v,
                    width: 255.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        right: 10.h,
                        bottom: 108.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 128.h,
                            margin: EdgeInsets.only(top: 6.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillYellow.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR10,
                            ),
                            child: Text(
                              viewhierarchylistItemModelObj.freeItemText!,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                viewhierarchylistItemModelObj?.freeItemImage1,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      viewhierarchylistItemModelObj.offerText!,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      viewhierarchylistItemModelObj.deliveryFeeText!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Container(
                  height: 27.v,
                  width: 31.h,
                  margin: EdgeInsets.only(
                    left: 44.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 27.v,
                          width: 31.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray200,
                            borderRadius: BorderRadius.circular(
                              15.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          viewhierarchylistItemModelObj.ratingText!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
