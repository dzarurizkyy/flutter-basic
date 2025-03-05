import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/providers/all_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Carts>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: cartData.totalCart,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0.4,
                    shadowColor: Colors.grey[400],
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_basket_rounded,
                        color: Colors.grey[700],
                      ),
                      title: Text(
                        cartData.items.values.toList()[index].title,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[800]),
                      ),
                      subtitle: Text(
                        "Quantity: ${cartData.items.values.toList()[index].qty}",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700]),
                      ),
                      trailing: Text(
                        "\$${cartData.items.values.toList()[index].qty * cartData.items.values.toList()[index].price}",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[800],
                        ),
                      ),
                      dense: true,
                      tileColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 4,
                    color: Colors.grey[100],
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
              ),
              child: Text(
                "Pay \$${cartData.totalPrice.toString()}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
