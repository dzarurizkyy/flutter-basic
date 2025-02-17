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
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Switch",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
                child: FittedBox(
                  child: Switch(
                    activeThumbImage: AssetImage("lib/assets/active.png"),
                    inactiveThumbImage: AssetImage("lib/assets/inactive.png"),
                    activeColor: Colors.blue,
                    inactiveTrackColor: Colors.red[400],
                    thumbColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                        return Colors.white70;
                      },
                    ),
                    trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        return Colors.transparent;
                      },
                    ),
                    value: isSwitch,
                    onChanged: (value) {
                      setState(() {
                        isSwitch = !isSwitch;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                isSwitch ? "Switch On" : "Switch Off",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
