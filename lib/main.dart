import 'package:flutter/material.dart';
import 'screens/add_new_alarm_scree.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPS Alarm',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: AddNewAlarmScreen(
        titlename: "Create New Alarm",
        //akesh
        //aswin
      ),
    );
  }
}
