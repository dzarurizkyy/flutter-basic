import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "List View",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: myColor.length,
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                color: myColor[index],
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 15,
                color: Colors.white70,
              );
            },
          ),
        ));
  }
}
