import 'dart:math';
import 'package:faker/faker.dart' as faker;
import 'package:flutter/material.dart';
import 'package:flutter_application/models/product.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final faker.Faker fakerData = faker.Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> product = List.generate(100, (index) {
      return Product(
        fakerData.food.restaurant(),
        "https://picsum.photos/id/$index/200",
        10000 + Random().nextInt(100000),
        fakerData.lorem.sentence(),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Models",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 8,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  product[index].imageUrl,
                  fit: BoxFit.cover,
                  height: 160,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.blue[200],
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          product[index].title,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Rp ${product[index].price.toString()}",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          product[index].description,
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          itemCount: product.length,
        ),
      ),
    );
  }
}
