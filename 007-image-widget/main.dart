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
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 500,
              color: Colors.grey,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("images/ocean.jpg"),
                // image: NetworkImage("https://picsum.photos/id/2/200/300"),
              ),
            ),
          )),
    );
  }
}
