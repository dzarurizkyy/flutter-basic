import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/providers/all_products.dart';
import 'package:flutter_application/widgets/product_detail_list.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = './product-detail';
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final product = Provider.of<Products>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: ProductDetailList(product: product),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
