import 'package:flutter/material.dart';
FooditemList fooditemList = FooditemList(foodItems: [
  FoodItem(
      id: 1,
      title: "Beach BBQ Burger",
      hotel: "Las Vegas Hotel",
      price: 14.49,
      isFavorite: false,
      imgUrl: "assets/beaf-steak.jpg"
  ),
  FoodItem(
      id: 2,
      title: "Kick Ass Burgers",
      hotel: "Dudleys",
      price: 11.99,
      isFavorite: false,
      imgUrl: "assets/butter-chicken.jpg"
  ),
  FoodItem(
      id: 3,
      title: "Supreme Pizza Burger",
      hotel: "Golf Course",
      price: 8.49,
      isFavorite: false,
      imgUrl: "assets/dumplings.jpg"
  ),
  FoodItem(
    id: 4,
    title: "Chilly Cheeze Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    isFavorite: false,
    imgUrl: "assets/french-toast.jpg",
  ),
  FoodItem(
    id: 5,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    isFavorite: false,
    imgUrl: "assets/mexican-pizza.jpg",
  ),
  FoodItem(
    id: 6,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    isFavorite: false,
    imgUrl: "assets/ramen-noodles.jpg",
  ),
]);

class FooditemList {
  List<FoodItem> foodItems;

  FooditemList({ required this.foodItems});
}

class FoodItem{
  final int id;
  final String title;
  final String hotel;
  final double price;
  final String imgUrl;
  final int quantity;
  final bool isFavorite;

  FoodItem({
    required this.id,
    required this.title,
    required this.hotel,
    required this.price,
    required this.imgUrl,
    this.quantity = 1,
    this.isFavorite = false,
  }) :  assert(price >= 10, 'Price cannot be negative'),
        assert(title.isNotEmpty, 'Title cannot be empty'),
        assert(hotel.isNotEmpty, 'Hotel cannot be empty'),
        assert(Uri.tryParse(imgUrl)?.hasAbsolutePath ?? false, 'Invalid image URL');

  FoodItem copyWith({
    int? id,
    String? title,
    String? hotel,
    double? price,
    String? imgUrl,
    int? quantity,
    bool? isFavorite,
  }) {
    return FoodItem(
      id: id ?? this.id,
      title: title ?? this.title,
      hotel: hotel ?? this.hotel,
      price: price ?? this.price,
      imgUrl: imgUrl ?? this.imgUrl,
      quantity: quantity ?? this.quantity,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'hotel': hotel,
    'price': price,
    'imgUrl': imgUrl,
    'quantity': quantity,
    'isFavorite': isFavorite,
  };

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      id: json['id'],
      title: json['title'],
      hotel: json['hotel'],
      price: json['price'],
      imgUrl: json['imgUrl'],
      quantity: json['quantity'] ?? 1,
      isFavorite: json['isFavorite'] ?? false,
    );
  }

}


