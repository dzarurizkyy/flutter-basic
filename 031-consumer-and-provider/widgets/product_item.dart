import 'package:flutter/material.dart';
import 'package:flutter_application/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.grey[800],
          leading: Consumer<Product>(
            builder: (context, productData, child) => IconButton(
              icon: (productData.isFavorite)
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border_outlined),
              color: (productData.isFavorite) ? Colors.amber[100] : null,
              onPressed: () {
                productData.statusFav();
              },
            ),
          ),
          title: Text(
            productData.title!,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontSize: 7.8,
              fontWeight: FontWeight.w700,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: productData.id,
            );
          },
          child: Image.network(
            productData.imageUrl!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
