import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        "Name": "Dzaru Rizky Fathan Fortuna",
        "Age": 21,
        "favColor": [
          "Red",
          "Green",
          "Blue",
        ]
      },
      {
        "Name": "Mark Zuckerberg",
        "Age": 40,
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mapping List",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: ListView(
            children: myList.map(
              (data) {
                List myFavColor = data["favColor"];
                return Card(
                  elevation: 0.6,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${data["Name"]} (${data["Age"]})",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 280,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: myFavColor.map(
                                    (color) {
                                      return Container(
                                        color: Colors.blue[400],
                                        margin: EdgeInsets.only(right: 5),
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          color,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}
