import "package:flutter/material.dart";
import "./home.dart";

void main() {
  runApp(MyApp());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Not Found";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Center(
            child: Text(
              "Dialog",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(
            fontSize: data == "Not Found" ? 24 : 40,
            color: data == "Not Found" ? Colors.grey[400] : Colors.blue,
            fontWeight: data == "Not Found" ? FontWeight.w600 : FontWeight.w800,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    "Confirm",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  content: Text("Are you sure to delete this item?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          data = "False";
                        });

                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "No",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          data = "True";
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Yes",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                  ],
                );
              });
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.change_circle,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
