import 'package:flutter/material.dart';
import 'package:flutter_application/screens/cart_screen.dart';
import 'package:flutter_application/widgets/product_grid.dart';
import 'package:flutter_application/widgets/badge_cart.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/providers/all_cart.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Carts>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("MyShop"),
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
      body: ProductGrid(),
    );
  }
}
