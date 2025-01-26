import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.amber),
          leadingWidth: 50,
          title: Container(
            color: Colors.red,
            width: 60,
            height: 50,
          ),
          centerTitle: true,
          actions: [
            Container(
              width: 50,
              height: 50,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.lightBlue,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              width: 60,
              height: 50,
              color: Colors.black,
            ),
          ),
          flexibleSpace: Container(
            height: 20,
            color: Colors.green,
          ),
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
