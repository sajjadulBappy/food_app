import '../../model/food_item.dart';

abstract class CartEvent {}

class AddItemToCartEvent extends CartEvent {
  final FoodItem foodItem;

  AddItemToCartEvent(this.foodItem);
}

class RemoveItemFromCartEvent extends CartEvent {
  final int itemId;

  RemoveItemFromCartEvent(this.itemId);
}

class UpdateCartItemEvent extends CartEvent {
  final int itemId;
  final int? quantity;
  final bool? isFavorite;

  UpdateCartItemEvent({
    required this.itemId,
    this.quantity,
    this.isFavorite,
  });
}

class ClearCartEvent extends CartEvent {}
