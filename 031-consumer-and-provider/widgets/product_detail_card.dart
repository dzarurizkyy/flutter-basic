import 'package:flutter/material.dart';
import 'package:flutter_application/models/product.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.8,
      shadowColor: Colors.grey[400],
      child: ListTile(
        title: Text(
          "${product.title}",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          "${product.description}",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage("${product.imageUrl}"),
        ),
        trailing: Text(
          "Rp${product.price}",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
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
