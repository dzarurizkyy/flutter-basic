import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String formInput = "";

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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                autocorrect: false,
                enableSuggestions: true,
                enabled: true,
                autofocus: true,
                enableInteractiveSelection: true,
                obscureText: false,
                keyboardType: TextInputType.phone,
                readOnly: false,
                controller: myController,
                onChanged: (value) {
                  print("status: onchanged");
                },
                onSubmitted: (value) {
                  setState(() {
                    formInput = value;
                  });
                },
                onEditingComplete: () {
                  print("status: editing sucess");
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              formInput,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
