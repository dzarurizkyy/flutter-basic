import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/providers/all_products.dart';
import 'package:flutter_application/providers/all_cart.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final product = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Carts>(context, listen: false);

    return Card(
      elevation: 0.8,
      shadowColor: Colors.grey[400],
      child: ListTile(
        title: Text(
          "${product.title}",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Text(
                "\$${product.price}",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Text(
                "${product.description}",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage("${product.imageUrl}"),
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
            minimumSize: Size(35, 35),
            backgroundColor: Colors.grey[700],
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Add to cart",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                duration: Duration(milliseconds: 1000),
                backgroundColor: Colors.grey[800],
              ),
            );
            cart.addCart(
              product.id!,
              product.title!,
              product.price!,
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        dense: true,
        tileColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 20,
        ),
      ),
    );
  }
}
