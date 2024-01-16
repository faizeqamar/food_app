import '../../../core/app_export.dart';

/// This class is used in the [creditdebitcardcomponent_item_widget] screen.
class CreditdebitcardcomponentItemModel {
  CreditdebitcardcomponentItemModel({
    this.dynamicProperty2,
    this.dynamicProperty3,
    this.id,
  }) {
    dynamicProperty2 = dynamicProperty2 ?? ImageConstant.imgCreditCard;
    dynamicProperty3 = dynamicProperty3 ?? "Credit / Debit card ";
    id = id ?? "";
  }

  String? dynamicProperty2;

  String? dynamicProperty3;

  String? id;
}
