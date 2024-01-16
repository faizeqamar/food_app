import '../../../core/app_export.dart';

/// This class is used in the [menulist_item_widget] screen.
class MenulistItemModel {
  MenulistItemModel({
    this.menuItemName,
    this.menuItemPrice,
    this.menuImage,
    this.id,
  }) {
    menuItemName = menuItemName ?? "Mc Double";
    menuItemPrice = menuItemPrice ?? "20.99";
    menuImage = menuImage ?? ImageConstant.imgYyy11;
    id = id ?? "";
  }

  String? menuItemName;

  String? menuItemPrice;

  String? menuImage;

  String? id;
}
