import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  initializeDateFormatting("id_ID", "").then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(title: Text("Date Picker"));

    return Scaffold(
      appBar: appBar,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat("EEEE, d MMMM y", "id_ID").format(selectDate),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2025),
                    lastDate: DateTime(2030),
                    initialEntryMode: DatePickerEntryMode.calendar,
                    initialDatePickerMode: DatePickerMode.day,
                    helpText: "Select Date",
                    cancelText: "Cancel",
                    confirmText: "Submit",
                    fieldLabelText: "Date",
                    fieldHintText: "Enter Date",
                    selectableDayPredicate: (day) {
                      if (day.isAfter(
                            DateTime.now().subtract(
                              Duration(days: 2),
                            ),
                          ) &&
                          day.isBefore(DateTime.now().add(
                            Duration(days: 2),
                          ))) {
                        return true;
                      }
                      return false;
                    },
                    builder: (context, child) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 160,
                        ),
                        child: Theme(
                          data: ThemeData.dark().copyWith(
                            colorScheme: ColorScheme.dark(
                              primary: Colors.white,
                            ),
                          ),
                          child: child!,
                        ),
                      );
                    }).then(
                  (value) {
                    if (value != null) {
                      setState(() {
                        selectDate = value;
                      });
                    }
                  },
                );
              },
              child: Text(
                "Date Picker",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
