import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
      Tab(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo_album),
            SizedBox(height: 6),
            Text("Photo"),
          ],
        ),
      ),
      Tab(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.video_file),
            SizedBox(height: 6),
            Text("Video"),
          ],
        ),
      ),
      Tab(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.audio_file),
            SizedBox(height: 6),
            Text("Audio"),
          ],
        ),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        initialIndex: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "My Apps",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w600),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13),
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                  tabs: myTab,
                  dividerColor: Colors.transparent,
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  unselectedLabelStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                  indicatorPadding: EdgeInsets.only(bottom: -12),
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text(
                "Add Photo",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400]),
              ),
            ),
            Center(
              child: Text(
                "Add Video",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400]),
              ),
            ),
            Center(
              child: Text(
                "Add Audio",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
