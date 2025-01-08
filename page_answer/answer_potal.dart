import 'package:flutter/material.dart';

import 'answer1.dart';
import 'answer2.dart';
import 'answer3.dart';
import 'answer4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortalPage(),
    );
  }
}

class PortalPage extends StatelessWidget {
  const PortalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('My Answer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      if (index == 0) return Answer1Page();
                      if (index == 1) return Answer2Page();
                      if (index == 2) return Answer3Page();
                      return Answer4Page();
                    }),
                  );
                },
                child: Text('Answer${index + 1}'),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class AnswerPage extends StatelessWidget {
  final int answerNumber;

  const AnswerPage({required this.answerNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Answer $answerNumber'),
      ),
      body: Center(
        child: Text(
          'This is Answer $answerNumber',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
