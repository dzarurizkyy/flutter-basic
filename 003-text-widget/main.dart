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
          title: Text("My Apps"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget turpis vel nisi ultrices congue. Donec tincidunt, ligula et sagittis gravida, urna nulla imperdiet orci, et iaculis dui dui ut risus. Vivamus lorem lacus, scelerisque non tortor nec, ultricies tincidunt dolor. Morbi mauris justo, aliquet quis ligula volutpat, mattis commodo purus. Fusce varius lacinia sapien, non scelerisque quam ultricies at. Vestibulum posuere nec turpis fringilla molestie. Mauris ut mauris ut erat ultricies sollicitudin. Mauris ut scelerisque dolor. Praesent maximus consectetur feugiat.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'PlayWriteIN',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                letterSpacing: 1,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
                decorationColor: Colors.white,
                decorationThickness: 1,
                color: Colors.white,
                backgroundColor: Colors.black87,
              )),
        ),
      ),
    );
  }
}
