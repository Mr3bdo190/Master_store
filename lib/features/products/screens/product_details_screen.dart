import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: const IconThemeData(color: Colors.deepPurple)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 300, width: double.infinity, color: Colors.grey[200], child: const Icon(Icons.image, size: 100, color: Colors.grey)),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Expanded(child: Text('منتج جامد جداً', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))), IconButton(icon: const Icon(Icons.favorite_border, color: Colors.deepPurple), onPressed: (){})]),
                  // التقييمات
                  Row(children: [
                    ...List.generate(4, (index) => const Icon(Icons.star, color: Colors.amber, size: 20)),
                    const Icon(Icons.star_half, color: Colors.amber, size: 20),
                    const SizedBox(width: 8),
                    const Text('(4.5 / 5) - 120 تقييم', style: TextStyle(color: Colors.grey)),
                  ]),
                  const SizedBox(height: 16),
                  const Text('1500 ج.م', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                  const SizedBox(height: 24),
                  const Text('الوصف', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('نص افتراضي لوصف المنتج بالتفصيل علشان العميل يعرف كل حاجة قبل ما يشتري.', style: TextStyle(fontSize: 16, color: Colors.grey[600], height: 1.5)),
                  const SizedBox(height: 24),
                  const Text('آراء العملاء', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: const CircleAvatar(backgroundColor: Colors.deepPurple, child: Icon(Icons.person, color: Colors.white)),
                    title: const Text('أحمد محمد'),
                    subtitle: const Text('منتج ممتاز جداً وتوصيل سريع!'),
                    trailing: const Icon(Icons.star, color: Colors.amber, size: 20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: Colors.white),
        child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16)), child: const Text('إضافة إلى السلة', style: TextStyle(fontSize: 18, color: Colors.white))),
      ),
    );
  }
}
