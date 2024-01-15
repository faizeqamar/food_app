import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({
    this.freeItemImage,
    this.freeItemText,
    this.freeItemImage1,
    this.offerText,
    this.deliveryFeeText,
    this.ratingText,
    this.id,
  }) {
    freeItemImage = freeItemImage ?? ImageConstant.imgView3dBurger;
    freeItemText = freeItemText ?? "Free Item(Spend 10)";
    freeItemImage1 = freeItemImage1 ?? ImageConstant.imgHeart;
    offerText = offerText ?? "McDonald’s(Best Offer)";
    deliveryFeeText = deliveryFeeText ?? "4.99 Delivery Fee . 15-30 min";
    ratingText = ratingText ?? "4.5";
    id = id ?? "";
  }

  String? freeItemImage;

  String? freeItemText;

  String? freeItemImage1;

  String? offerText;

  String? deliveryFeeText;

  String? ratingText;

  String? id;
}
