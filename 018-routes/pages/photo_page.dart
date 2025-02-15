import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});
  static const nameRoute = '/photo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Photo Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Photo Page",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.grey[400]),
        ),
      ),
    );
  }
}
