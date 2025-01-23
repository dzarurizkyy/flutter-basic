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
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Dzaru Rizky Fathan Fortuna"),
                subtitle: Text(
                  'Fresh graduate from Universitas Pembangunan Nasional "Veteran" Jawa Timur',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                leading: CircleAvatar(),
                trailing: Text("12.00 PM"),
                dense: true,
                contentPadding: EdgeInsets.all(20),
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 15,
                color: Colors.white70,
              );
            },
          ),
        ));
  }
}
