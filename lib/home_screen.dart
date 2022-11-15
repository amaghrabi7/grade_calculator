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
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Type your score',
                prefixIcon: Icon(Icons.percent),
              ),
            ),
            Center(
              child: ElevatedButton(
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
