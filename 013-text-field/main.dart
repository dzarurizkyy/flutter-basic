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
          title: Center(
              child: Text(
            "Text Field",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          )),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: TextField(
            autocorrect: false,
            enableSuggestions: true,
            enabled: true,
            autofocus: true,
            enableInteractiveSelection: true,
            obscureText: false,
            keyboardType: TextInputType.phone,
            readOnly: true,
          ),
        ),
      ),
    );
  }
}
