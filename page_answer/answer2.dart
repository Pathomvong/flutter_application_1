import 'package:flutter/material.dart';

import 'answer_potal.dart';
//Answer 2

void main() {
  runApp(const Answer2Page());
}

class Answer2Page extends StatelessWidget {
  const Answer2Page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              leading: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(), // ใส่หน้าที่ต้องการนำไป
                    ),
                  );
                },
                child: Icon(Icons.arrow_back),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  iconColor: Colors.black,
                ),
              ),
              title: const Center(
                child: Text(
                  'Socail Media Post',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              backgroundColor: Colors.orange,
            ),
            body: Column(children: [
              Row(children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(10),
                ),
                Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Container(
                        child: const Text(
                          "Parnfa Phathabannaporn",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "5 minutes ago",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      )
                    ]))
              ]),
              Container(
                height: 200,
                width: double.infinity,
                color: const Color.fromARGB(255, 120, 117, 117),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 1),
                  ElevatedButton(onPressed: () {}, child: Text("Like")),
                  ElevatedButton(onPressed: () {}, child: Text("Comment")),
                  ElevatedButton(onPressed: () {}, child: Text("Share")),
                  const SizedBox(width: 1),
                ],
              )
            ])));
  }
}
