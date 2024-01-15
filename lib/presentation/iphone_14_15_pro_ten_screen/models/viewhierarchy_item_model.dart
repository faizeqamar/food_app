import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.freeItemImage,
    this.freeItemText,
    this.freeItemImage2,
    this.offerText,
    this.deliveryFeeText,
    this.ratingText,
    this.id,
  }) {
    freeItemImage = freeItemImage ?? ImageConstant.imgView3dBurger197x351;
    freeItemText = freeItemText ?? "Free Item(Spend 10)";
    freeItemImage2 = freeItemImage2 ?? ImageConstant.imgHeart;
    offerText = offerText ?? "McDonald’s(Best Offer)";
    deliveryFeeText = deliveryFeeText ?? "4.99 Delivery Fee . 15-30 min";
    ratingText = ratingText ?? "4.5";
    id = id ?? "";
  }

  String? freeItemImage;

  String? freeItemText;

  String? freeItemImage2;

  String? offerText;

  String? deliveryFeeText;

  String? ratingText;

  String? id;
}
