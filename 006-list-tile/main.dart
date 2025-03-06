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
            "List Tile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue[200]),
                title: Text(
                  "Dzaru Rizky Fathan Fortuna",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Fresh Graduate specializing in software development. Skilled in using Flutter to develop cross-platform mobile applications.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Text(
                  "Recent",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                tileColor: Colors.white,
                dense: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Container(height: 15, color: Colors.grey[100]);
            },
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}
