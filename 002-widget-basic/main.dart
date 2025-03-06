import 'package:flutter/material.dart';

// Main Function
void main() {
  runApp(MyApp());
}

// Child Class
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget"),
          backgroundColor: Color(0xffD8D2C2),
        ),
        body: Center(child: Text("Hello World")),
      ),
    );
  }
}
