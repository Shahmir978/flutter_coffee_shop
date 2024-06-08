import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/Models/Coffee.dart';

// import 'Shoe.dart';

class CoffeeShop extends ChangeNotifier {
  // list of shoe for sale
  final List<Coffee> _Shop = [
    Coffee(name: 'Latte', price: '35.99', imagePath: "assets/images/latte.jpg"),
    Coffee(
        name: 'Expresso',
        price: '57.99',
        imagePath: "assets/images/expresso.jpg"),
    Coffee(
        name: 'Iced Coffee',
        price: '45.99',
        imagePath: "assets/images/iced-coffee.jpg"),
    Coffee(
        name: 'Long Black',
        price: '25.35',
        imagePath: "assets/images/long-black.jpg"),
  ];

  // list of items in user cart
  List<Coffee> _userCart = [];

  // get list of shoe for sale
  List<Coffee> get coffeeShop => _Shop;

  //get cart
  List<Coffee> get userCart => _userCart;

  // add items to cart
  void addItemtoCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove items from cart
  void removeItemfromCart(Coffee coffee) {
    userCart.remove(coffee);
    notifyListeners();
  }
}
