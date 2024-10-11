import 'package:flutter/material.dart';

class AddNewAlarmScreen extends StatefulWidget {
  final dynamic titlename;

  const AddNewAlarmScreen({
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
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      backgroundColor: const Color(0xFF08151A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF08151A),
        centerTitle: true,
        title: Text(
          widget.titlename,
          style: const TextStyle(
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
              color: const Color(0xFF000000),
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF055056),
                enabledBorder: border,
                focusedBorder: border,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                hintText: 'Enter alarm name',
                hintStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFFCDF0CF),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFF055056),
                      enabledBorder: border,
                      focusedBorder: border,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                      hintText: 'Radius',
                      hintStyle: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFFCDF0CF),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: ToggleButtons(
                    borderColor: const Color(0xFF055056),
                    selectedBorderColor: const Color(0xFF055056),
                    fillColor: const Color(0xFF21C77D),
                    selectedColor: const Color(0xFF09161C),
                    color: const Color(0xFF21C77D),
                    borderRadius: BorderRadius.circular(30),
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
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Enter',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Exit',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.40,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF055056),
                ),
                child: const Text(
                  "More Options",
                  style: TextStyle(
                    color: Color(0xFFCDF0CF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF055056),
                    ),
                    child: const Text(
                      "DELETE",
                      style: TextStyle(
                        color: Color(0xFFCDF0CF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF21C77D),
                    ),
                    child: const Text(
                      "SAVE",
                      style: TextStyle(
                        color: Color(0xFF09161C),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
