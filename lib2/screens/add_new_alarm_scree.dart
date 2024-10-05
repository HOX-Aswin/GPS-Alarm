import 'package:flutter/material.dart';

class AddNewAlarmScreen extends StatefulWidget {
  final titlename;

  AddNewAlarmScreen({
    super.key,
    this.titlename,
  });

  @override
  State<AddNewAlarmScreen> createState() => _AddNewAlarmScreenState();
}

class _AddNewAlarmScreenState extends State<AddNewAlarmScreen> {
  final List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08151A),
      appBar: AppBar(
        backgroundColor: Color(0xFF08151A),
        centerTitle: true,
        title: Text(
          widget.titlename,
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFFCDF0CF),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              color: Color(0xFF000000),
            ),
            TextField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: TextField(),
                ),
                ToggleButtons(
                  borderColor: Color(0xFF055056),
                  selectedBorderColor: Color(0xFF055056),
                  fillColor: Color(0xFF21C77D),
                  selectedColor: Color(0xFF09161C),
                  color: Color(0xFF21C77D),
                  borderRadius: BorderRadius.circular(30),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Enter',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Exit',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                  isSelected: isSelected,
                  onPressed: (int index) {
                    setState(
                      () {
                        for (int i = 0; i < isSelected.length; i++) {
                          isSelected[i] = i == index;
                        }
                      },
                    );
                  },
                )
              ],
            ),
            TextButton(onPressed: () {}, child: Text("More Options")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("DELETE"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("SAVE"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
