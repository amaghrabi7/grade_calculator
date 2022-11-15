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
              margin: EdgeInsets.all(40),
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
                  print("Your grade is ${controller.text}%");
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
