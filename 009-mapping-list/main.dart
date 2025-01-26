import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Dzaru Rizky Fathan Fortuna",
      "Age": 21,
      "favColor": ["Red", "Green", "Blue"]
    },
    {
      "Name": "Mark Zuckerberg",
      "Age": 40,
      "favColor": ["Cyan", "Magenta", "Yellow", "Key"]
    },
    {
      "Name": "Elon Musk",
      "Age": 53,
      "favColor": [
        "Red",
        "Orange",
        "Yellow",
        "Green",
        "Blue",
        "Indigo",
        "Violet"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mapping List",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data["favColor"];
            return Card(
              margin: EdgeInsets.all(20),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}")
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myFavColor.map((color) {
                          return Container(
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              top: 24,
                              bottom: 8,
                              left: 10,
                              right: 10,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              color,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
