import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/providers/all_products.dart';
import 'package:flutter_application/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allproducts = productData.allproducts;

    return GridView.builder(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      itemCount: allproducts.length,
      itemBuilder: (ctx, i) => ProductItem(
        id: allproducts[i].id!,
        title: allproducts[i].title!,
        imageUrl: allproducts[i].imageUrl!,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.80,
      ),
    );
  }
}
