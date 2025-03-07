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
          flexibleSpace: Container(height: 40, color: Colors.black),
          leading: TextButton(
            onPressed: () {},
            child: Icon(Icons.list, color: Colors.white, size: 24),
          ),
          leadingWidth: 60,
          title: Text(
            "Appbar Widget",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          titleSpacing: 0,
          // centerTitle: true,
          actions: List.generate(3, (index) {
            return TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(30, 0),
              ),
              onPressed: () {},
              child: Icon(
                index == 0
                    ? Icons.refresh
                    : index == 1
                        ? Icons.person_add
                        : Icons.more_vert,
                color: Colors.white,
                size: 20,
              ),
            );
          }),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 0,
                bottom: 18,
              ),
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 14,
                  ),
                  child: Autocomplete(
                    optionsBuilder: (value) {
                      return ["Black Beans", "Black Pepper", "Blueberry"];
                    },
                    fieldViewBuilder: (context, textEditingController,
                        focusNode, onFieldSubmitted) {
                      return TextField(
                        controller: textEditingController,
                        focusNode: focusNode,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                        decoration: InputDecoration(
                          hintText: "Search...",
                          border: InputBorder.none,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
