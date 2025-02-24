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
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(title: Text("Layout Builder"));
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final heightBody = heightApp - paddingTop - appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final widthContainer = constraints.maxWidth;
            final widthChildContainer = widthContainer / 4;

            return Container(
              width: widthContainer,
              height: heightBody * 0.2,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => MyContainer(
                    index: index,
                    width: widthChildContainer,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final int index;
  final double width;

  const MyContainer({
    super.key,
    required this.index,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> myColor = <Color>[
      Colors.blue[200]!,
      Colors.blue[300]!,
      Colors.blue[400]!
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: width,
          height: constraints.maxHeight * 0.5,
          color: myColor[index],
        );
      },
    );
  }
}
