import 'package:flutter/material.dart';
import 'package:flutter_application/helper/string_extenstion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listTab = ["photo", "video", "audio"];
    List<Tab> myTab = List.generate(
      listTab.length,
      (index) {
        return Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                listTab[index] == "photo"
                    ? Icons.photo_album
                    : listTab[index] == "video"
                        ? Icons.video_file
                        : Icons.audio_file,
              ),
              SizedBox(height: 6),
              Text(listTab[index].capitalize()),
            ],
          ),
        );
      },
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        initialIndex: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: Center(
              child: Text(
                "TabBar Widget",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(vertical: 13),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TabBar(
                  tabs: myTab,
                  dividerColor: Colors.transparent,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorPadding: EdgeInsets.only(bottom: -12),
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: List.generate(
              listTab.length,
              (index) {
                return Center(
                  child: Text(
                    "Add ${listTab[index].capitalize()}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[400],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
