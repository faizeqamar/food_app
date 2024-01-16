import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';
import 'viewhierarchylist_item_model.dart';
import 'menulist_item_model.dart';

class HomeScreenModel {
  List<UserprofilelistItemModel> userprofilelistItemList = [
    UserprofilelistItemModel(
        burgerImage: ImageConstant.imgBurger1, burgerText: "Burgers"),
    UserprofilelistItemModel(
        burgerImage: ImageConstant.imgMeat1, burgerText: "Meat"),
    UserprofilelistItemModel(
        burgerImage: ImageConstant.imgIceCream1, burgerText: "Icecream"),
    UserprofilelistItemModel(burgerText: "Pizza")
  ];

  List<ViewhierarchylistItemModel> viewhierarchylistItemList = [
    ViewhierarchylistItemModel(
        freeItemImage: ImageConstant.imgView3dBurger,
        freeItemText: "Free Item(Spend 10)",
        freeItemImage1: ImageConstant.imgHeart,
        offerText: "McDonald’s(Best Offer)",
        deliveryFeeText: "4.99 Delivery Fee . 15-30 min",
        ratingText: "4.5")
  ];

  List<MenulistItemModel> menulistItemList = [
    MenulistItemModel(
        menuItemName: "Mc Double",
        menuItemPrice: "20.99",
        menuImage: ImageConstant.imgYyy11),
    MenulistItemModel(
        menuItemName: "Supreme Pizza",
        menuItemPrice: "15.99",
        menuImage: ImageConstant.imgYuyuyyuy11)
  ];
}
