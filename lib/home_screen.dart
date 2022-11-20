import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();

  String gradeLetter = 'PP';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(40),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'Type your score',
                  prefixIcon: Icon(Icons.percent),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Calculate'),
                onPressed: () {
                  setState(() {
                    int? grade = int.tryParse(controller.text);
                    if (grade == null) {
                      gradeLetter = '${controller.text} is not a number';
                      return;
                    }

                    if (grade >= 90) {
                      gradeLetter = "A";
                    } else if (grade >= 80) {
                      gradeLetter = "B";
                    } else if (grade >= 70) {
                      gradeLetter = "C";
                    } else if (grade >= 60) {
                      gradeLetter = "D";
                    } else {
                      gradeLetter = "F";
                    }
                    controller.clear();
                  });
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  gradeLetter,
                  style: TextStyle(fontSize: 112, color: Colors.indigo),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
