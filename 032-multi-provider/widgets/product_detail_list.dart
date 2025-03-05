import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/product_detail_card.dart';

class ProductDetailList extends StatelessWidget {
  const ProductDetailList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 1,
      itemBuilder: (context, index) {
        return ProductDetailCard();
      },
    );
  }
}
