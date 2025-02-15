import 'package:flutter/material.dart';
import 'package:flutter_application/pages/gallery_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const nameRoute = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.grey[400]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
