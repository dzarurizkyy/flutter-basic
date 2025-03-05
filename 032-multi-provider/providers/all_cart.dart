import 'package:flutter/material.dart';
import 'package:flutter_application/models/cart.dart';

class Carts with ChangeNotifier {
  Map<String, Cart> _items = {};

  Map<String, Cart> get items {
    return _items;
  }

  int get totalCart {
    return _items.length;
  }

  double get totalPrice {
    var total = 0.0;

    _items.forEach(
      (key, cartItem) {
        _items.forEach(
          (key, cartItem) {
            total += cartItem.qty * cartItem.price;
          },
        );
      },
    );

    return total;
  }

  void addCart(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (value) => Cart(
          id: value.id,
          title: value.title,
          price: value.price,
          qty: value.qty + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => Cart(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          qty: 1,
        ),
      );
    }
    notifyListeners();
  }
}
