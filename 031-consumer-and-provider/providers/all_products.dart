import 'dart:math';

import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _allproduct = List.generate(25, (index) {
    return Product(
      id: "id_${index + 1}",
      title: "Product ${index + 1}",
      description: "This is product ${index + 1} description",
      price: 10 + Random().nextInt(100).toDouble(),
      imageUrl: "https://picsum.photos/id/$index/200/300",
    );
  });

  List<Product> get allproducts {
    return [..._allproduct];
  }

  Product findById(productId) {
    return _allproduct.firstWhere((product) => product.id == productId);
  }
}
