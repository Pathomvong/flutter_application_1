import 'package:flutter/material.dart';

import 'answer_potal.dart';

void main() {
  runApp(const Answer3Page());
}

class Answer3Page extends StatelessWidget {
  const Answer3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductLayout(),
    );
  }
}

class ProductLayout extends StatelessWidget {
  const ProductLayout({super.key});

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
        title: const Text('Product Layout'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            color: Colors.grey[300],
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Category: Electronics',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Product Grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // ช่องว่างสมดุล
                  children: const [
                    ProductItem(
                      imageUrl:
                          'https://th.bing.com/th?id=OIF.3xeC82kP1phxoa%2fEd7hKxA&w=236&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      name: 'Laptop',
                      price: '999 THB',
                    ),
                    ProductItem(
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.K--7GuaoEhLA_TNdO_s22AHaEK?rs=1&pid=ImgDetMain',
                      name: 'Smartphone',
                      price: '699 THB',
                    ),
                  ],
                ),
                const SizedBox(height: 10), // ลดช่องว่างแนวตั้ง
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ProductItem(
                      imageUrl:
                          'data:image/jpeg;base64,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',
                      name: 'Tablet',
                      price: '599 THB',
                    ),
                    ProductItem(
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.7u5MXndota9J1sT6aiU-4AAAAA?w=474&h=237&rs=1&pid=ImgDetMain',
                      name: 'Smartwatch',
                      price: '399 THB',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  const ProductItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Product Image
        Container(
          width: 150, // ลดขนาด
          height: 150,
          decoration: BoxDecoration(
            color: Colors.teal,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5), // ลดช่องว่างระหว่างรูปและข้อความ
        // Product Name
        Text(
          name,
          style: const TextStyle(
            fontSize: 14, // ลดขนาดตัวอักษร
            fontWeight: FontWeight.bold,
          ),
        ),
        // Product Price
        Text(
          price,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
