import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = TextEditingController();

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
                  int? grade = int.tryParse(controller.text);
                  if (grade == null) {
                    print('${controller.text} is not a number');
                    return;
                  }

                  if (grade >= 90) {
                    print("A");
                  } else if (grade >= 80) {
                    print("B");
                  } else if (grade >= 70) {
                    print("C");
                  } else if (grade >= 60) {
                    print("D");
                  } else {
                    print("F");
                  }
                  controller.clear();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
