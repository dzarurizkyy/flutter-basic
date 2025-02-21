import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.comfortable,
        appBarTheme: AppBarTheme(
          color: Colors.blueAccent,
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App"),
        titleSpacing: 4,
        leading: Icon(Icons.auto_fix_high),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 640,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blueAccent, // Warna latar belakang
                              borderRadius:
                                  BorderRadius.circular(10), // Sudut melengkung
                            ),
                            child: ListTile(
                                title: Text(
                                  "This is a text",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white,
                                ),
                                dense: true,
                                contentPadding: EdgeInsets.all(20),
                                visualDensity: VisualDensity(vertical: -3)),
                          ),
                          if (index == 99)
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Button"),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
