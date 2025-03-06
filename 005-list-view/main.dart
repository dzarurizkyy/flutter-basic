import 'package:flutter/material.dart';

main() {
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
            "List View",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                height: 330,
                color: Colors.blue[100 + (index * 100)],
              );
            },
            separatorBuilder: (context, index) {
              return Container(height: 15, color: Colors.white70);
            },
          ),
        ),
      ),
    );
  }
}
