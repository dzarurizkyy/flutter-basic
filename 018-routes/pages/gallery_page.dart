import 'package:flutter/material.dart';
import 'package:flutter_application/pages/photo_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  static const nameRoute = '/gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Gallery Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gallery Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.only(
                        right: 20, left: 14, top: 10, bottom: 10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PhotoPage.nameRoute);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.only(
                        left: 20, right: 14, top: 10, bottom: 10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
