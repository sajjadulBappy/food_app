import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/card_list/card_event.dart';
import 'package:food_app/bloc/card_list/card_state.dart';
import 'package:food_app/model/food_item.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(cartItems: [], totalCost: 0)) {

    on<AddItemToCartEvent>((event, emit) {
      final updatedCartItems = List<FoodItem>.from(state.cartItems);
      updatedCartItems.add(event.foodItem);
      final updatedTotalCost = _calculateTotalCost(updatedCartItems);
      emit(state.copyWith(cartItems: updatedCartItems, totalCost: updatedTotalCost));
    });

    on<RemoveItemFromCartEvent>((event, emit) {
      final updatedCartItems = state.cartItems.where((item) => item.id != event.itemId).toList();
      final updatedTotalCost = _calculateTotalCost(updatedCartItems);
      emit(state.copyWith(cartItems: updatedCartItems, totalCost: updatedTotalCost));
    });

    on<UpdateCartItemEvent>((event, emit) {
      final updatedCartItems = state.cartItems.map((item) {
        if (item.id == event.itemId) {
          return item.copyWith(
            quantity: event.quantity ?? item.quantity,
            isFavorite: event.isFavorite ?? item.isFavorite,
          );
        }
        return item;
      }).toList();
      final updatedTotalCost = _calculateTotalCost(updatedCartItems);
      emit(state.copyWith(cartItems: updatedCartItems, totalCost: updatedTotalCost));
    });

    on<ClearCartEvent>((event, emit) {
      emit(state.copyWith(cartItems: [], totalCost: 0));
    });
  }

  double _calculateTotalCost(List<FoodItem> cartItems) {
    return cartItems.fold(0, (total, item) => total + (item.price * item.quantity));
  }
}
