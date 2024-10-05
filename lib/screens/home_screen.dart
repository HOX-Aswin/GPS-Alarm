import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
//aswin
class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08151A),
      appBar: AppBar(
        backgroundColor: Color(0xFF08151A),
        centerTitle: true,
        title: Text(
          "GPS Alarm",
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFFCDF0CF),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.30,
            color: Color(0xFF000000),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            iconSize: 60,
            icon: Icon(
              Icons.add,
              color: Color(0xFF21C77D),
            ),
          ),
        ],
      ),
    );
  }
}
