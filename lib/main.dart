import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 250, 242, 0)),
        useMaterial3: true,
      ),
      home: const GreetingWidget(name: 'ปฐมวงศ์ วงศ์สาลี 650710236'),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String name;

  const GreetingWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo APP'),
        backgroundColor: const Color.fromARGB(255, 0, 255, 149),
      ),
      body: Center(child: Text('Hello, $name')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor:
            const Color.fromARGB(255, 255, 149, 0), // เปลี่ยนสี AppBar
        leading: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: const Color.fromARGB(255, 255, 0, 0), // สีพื้นหลัง Container
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: const Text(
            'Hello',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello"); // แสดงข้อความใน console
          _incrementCounter(); // เพิ่มจำนวน
        },
        child: const Icon(Icons.phone),
      ),
    );
  }
}
