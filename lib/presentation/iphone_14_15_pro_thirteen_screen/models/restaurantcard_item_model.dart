import '../../../core/app_export.dart';

/// This class is used in the [restaurantcard_item_widget] screen.
class RestaurantcardItemModel {
  RestaurantcardItemModel({
    this.dishImage,
    this.favoriteIcon,
    this.dishName,
    this.deliveryFee,
    this.rating,
    this.id,
  }) {
    dishImage = dishImage ?? ImageConstant.imgTopViewDelici180x341;
    favoriteIcon = favoriteIcon ?? ImageConstant.imgFavoriteOnprimarycontainer;
    dishName = dishName ?? "Delicious Pasta";
    deliveryFee = deliveryFee ?? "8.99 Delivery Fee . 15-30 min";
    rating = rating ?? "4.6";
    id = id ?? "";
  }

  String? dishImage;

  String? favoriteIcon;

  String? dishName;

  String? deliveryFee;

  String? rating;

  String? id;
}
