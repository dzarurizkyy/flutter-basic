import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Image Widget",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            width: 320,
            height: 280,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage("images/ocean.jpg"),
              // image: NetworkImage("https://picsum.photos/id/2/200/300"),
            ),
          ),
        ),
      ),
    );
  }
}
