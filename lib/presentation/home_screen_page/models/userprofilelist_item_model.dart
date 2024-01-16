import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.burgerImage,
    this.burgerText,
    this.id,
  }) {
    burgerImage = burgerImage ?? ImageConstant.imgBurger1;
    burgerText = burgerText ?? "Burgers";
    id = id ?? "";
  }

  String? burgerImage;

  String? burgerText;

  String? id;
}
