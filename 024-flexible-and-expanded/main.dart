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
      home: HomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        textTheme: TextTheme(
          labelSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(title: Text("Flexible & Expanded"));

    return Scaffold(
      appBar: myAppBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.blue[300],
              alignment: Alignment.center,
              child: Text(
                "Text 1",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue[200],
              alignment: Alignment.center,
              child: Text(
                "Text 2",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.blue[100],
              child: Text(
                "Text 3",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
