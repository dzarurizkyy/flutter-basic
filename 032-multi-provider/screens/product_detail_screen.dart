import 'package:flutter/material.dart';
import 'package:flutter_application/screens/cart_screen.dart';
import 'package:flutter_application/widgets/product_detail_list.dart';
import 'package:flutter_application/widgets/badge_cart.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/providers/all_cart.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = './product-detail';
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Carts>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        actions: [
          Consumer<Carts>(
            builder: (context, value, ch) {
              return BadgeCart(
                value: cart.totalCart.toString(),
                color: Colors.amber,
                child: ch!,
              );
            },
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              icon: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: ProductDetailList(),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
