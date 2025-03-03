import 'package:flutter/material.dart';
import 'package:flutter_application/providers/all_products.dart';
import 'package:flutter_application/screens/product_detail_screen.dart';
import 'package:flutter_application/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "State Managagement Provider",
        home: ProductOverviewScreen(),
        theme: ThemeData(
          fontFamily: "Poppins",
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.amber[100],
          ),
          appBarTheme: AppBarTheme(
            color: Colors.grey[800],
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
        ),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
