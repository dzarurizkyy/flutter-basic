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
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.network(
                  product[index].imageUrl,
                  fit: BoxFit.cover,
                  height: 70,
                  width: 200,
                ),
                Container(
                  color: Colors.blue[100],
                  width: double.infinity,
                  height: 88,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product[index].title,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Rp ${product[index].price.toString()}",
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          product[index].description,
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[900],
                          ),
                        )
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
