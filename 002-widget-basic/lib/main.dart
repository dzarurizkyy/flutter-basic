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
          title: Text("My Apps"),
          backgroundColor: Color(0xff7E99A3),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
