import 'package:flutter/material.dart';

import 'answer_potal.dart';

void main() {
  runApp(const Answer4Page());
}

class Answer4Page extends StatelessWidget {
  const Answer4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.orange,
        title: const Text('Profile Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ส่วน Header
          Container(
            color: Colors.blue,
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 8),
                Text(
                  'User Name',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          // ส่วนข้อมูลโปรไฟล์
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('user@example.com'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('123-456-7890'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('123 Main Street'),
                  ],
                ),
              ],
            ),
          ),
          // ส่วนปุ่มเมนู
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // กดเพื่อแก้ไขโปรไฟล์
                      },
                      child: const Text('Edit Profile'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // กดเพื่อออกจากระบบ
                      },
                      child: const Text('Logout'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
