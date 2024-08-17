import 'package:food_app/model/food_item.dart';

class FoodItemState {
  final FoodItem foodItem;

  FoodItemState({required this.foodItem});

  FoodItemState copyWith({
    int? id,
    String? title,
    String? hotel,
    double? price,
    String? imgUrl,
    int? quantity,
    bool? isFavorite,
  }) {
    return FoodItemState(
      foodItem: FoodItem(
        id: id ?? foodItem.id,
        title: title ?? foodItem.title,
        hotel: hotel ?? foodItem.hotel,
        price: price ?? foodItem.price,
        imgUrl: imgUrl ?? foodItem.imgUrl,
        quantity: quantity ?? foodItem.quantity,
        isFavorite: isFavorite ?? foodItem.isFavorite,
      ),
    );
  }
}
