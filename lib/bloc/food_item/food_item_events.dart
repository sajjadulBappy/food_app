abstract class FoodItemEvent {}

class ToggleFavoriteEvent extends FoodItemEvent {}

class IncrementQuantityEvent extends FoodItemEvent {}

class DecrementQuantityEvent extends FoodItemEvent {}

class UpdateFoodItemEvent extends FoodItemEvent {
  final int? id;
  final String? title;
  final String? hotel;
  final double? price;
  final String? imgUrl;
  final int? quantity;

  UpdateFoodItemEvent({
    this.id,
    this.title,
    this.hotel,
    this.price,
    this.imgUrl,
    this.quantity,
  });
}
