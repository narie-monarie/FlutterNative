import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "Ksh. 20.00", "lib/images/1.png", Colors.green],
    ["Banana", "Ksh. 10.00", "lib/images/2.png", Colors.yellowAccent],
    ["Apple", "Ksh. 50.00", "lib/images/4.png", Colors.red],
    ["Watermelon", "Ksh. 40.00", "lib/images/5.png", Colors.red[300]],
  ];

  get shopItems => _shopItems;
}
