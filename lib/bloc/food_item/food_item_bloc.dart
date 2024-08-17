import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/food_item/food_item_state.dart';
import 'package:food_app/model/food_item.dart';

import 'food_item_events.dart';

class FoodItemBloc extends Bloc<FoodItemEvent, FoodItemState> {
  FoodItemBloc(FoodItem initialFoodItem)
      : super(FoodItemState(foodItem: initialFoodItem)) {
    on<ToggleFavoriteEvent>((event, emit) {
      final updatedItem = state.foodItem.copyWith(
        isFavorite: !state.foodItem.isFavorite,
      );
      emit(FoodItemState(foodItem: updatedItem));
    });

    on<IncrementQuantityEvent>((event, emit) {
      final updatedItem = state.foodItem.copyWith(
        quantity: state.foodItem.quantity + 1,
      );
      emit(FoodItemState(foodItem: updatedItem));
    });

    on<DecrementQuantityEvent>((event, emit) {
      final updatedItem = state.foodItem.copyWith(
        quantity: state.foodItem.quantity > 1
            ? state.foodItem.quantity - 1
            : state.foodItem.quantity,
      );
      emit(FoodItemState(foodItem: updatedItem));
    });

    on<UpdateFoodItemEvent>((event, emit) {
      try {
        final updatedItem = state.foodItem.copyWith(
          id: event.id,
          title: event.title,
          hotel: event.hotel,
          price: event.price,
          imgUrl: event.imgUrl,
          quantity: event.quantity,
        );
        emit(FoodItemState(foodItem: updatedItem));
      } catch (e) {
        print('Error updating FoodItem: $e');
      }
    });
  }
}
