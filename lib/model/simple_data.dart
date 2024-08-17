

import 'package:food_app/model/food_item.dart';
FooditemList fooditemList = FooditemList(foodItems: [
  FoodItem(
    id: 1,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
    "https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/480x240/54ca71fb94ad3_-_5summer_skills_burger_470_0808-de.jpg",
  ),
  FoodItem(
    id: 2,
    title: "Kick Ass Burgers",
    hotel: "Dudleys",
    price: 11.99,
    imgUrl:
    "https://b.zmtcdn.com/data/pictures/chains/8/18427868/1269c190ab2f272599f8f08bc152974b.png",
  ),
  FoodItem(
    id: 3,
    title: "Supreme Pizza Burger",
    hotel: "Golf Course",
    price: 8.49,
    imgUrl: "https://static.food2fork.com/burger53be.jpg",
  ),
  FoodItem(
    id: 4,
    title: "Chilly Cheeze Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl: "https://static.food2fork.com/36725137eb.jpg",
  ),
  FoodItem(
    id: 5,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl: "https://static.food2fork.com/turkeyburger300x200ff84052e.jpg",
  ),
  FoodItem(
    id: 6,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
    "https://cdn.pixabay.com/photo/2018/03/04/20/08/burger-3199088__340.jpg",
  ),
]);

class FooditemList {
  List<FoodItem> foodItems;

  FooditemList({ required this.foodItems});
}
List<FoodItem> sampleFoodItems = [
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
];
