import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '400',
      imagePath: 'images/ZOOM FREAK.png',
      description: 'The best shoe recommended for you',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '600',
      imagePath: 'images/sneakers-4.png',
      description: 'Best kicks for all dance moves and parties',
    ),
    Shoe(
      name: 'Cambo',
      price: '200',
      imagePath: 'images/sneakers-3.png',
      description: 'The jogging boots are here, don\'t miss them',
    ),
    Shoe(
      name: 'All Star',
      price: '399',
      imagePath: 'images/sneakers-2.png',
      description: 'Don\'t miss out on these bad boys',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

//get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item fron the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
