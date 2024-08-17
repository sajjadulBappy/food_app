import '../../model/food_item.dart';

class CartState {
  final List<FoodItem> cartItems;
  final double totalCost;

  CartState({
    required this.cartItems,
    required this.totalCost,
  });

  CartState copyWith({
    List<FoodItem>? cartItems,
    double? totalCost,
  }) {
    return CartState(
      cartItems: cartItems ?? this.cartItems,
      totalCost: totalCost ?? this.totalCost,
    );
  }
}
