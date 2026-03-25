import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(icon: const Icon(Icons.share_outlined), onPressed: () => Get.snackbar('مشاركة', 'تم نسخ رابط المنتج بنجاح!')),
        ],
      ),
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
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Expanded(child: Text('تيشيرت صيفي ممتاز', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))), IconButton(icon: const Icon(Icons.favorite_border, color: Colors.deepPurple), onPressed: () => Get.snackbar('المفضلة', 'تم الإضافة للمفضلة'))]),
                  const SizedBox(height: 8),
                  const Text('1500 ج.م', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                  const SizedBox(height: 24),
                  
                  // المقاسات
                  const Text('اختر المقاس:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(children: ['S', 'M', 'L', 'XL'].map((s) => Padding(padding: const EdgeInsets.only(left: 8.0), child: Chip(label: Text(s), backgroundColor: s == 'L' ? Colors.deepPurple : Colors.grey[200], labelStyle: TextStyle(color: s == 'L' ? Colors.white : Colors.black)))).toList()),
                  const SizedBox(height: 16),
                  
                  // الألوان
                  const Text('اختر اللون:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(children: [Colors.black, Colors.red, Colors.blue].map((c) => Padding(padding: const EdgeInsets.only(left: 8.0), child: CircleAvatar(backgroundColor: c, radius: 20, child: c == Colors.black ? const Icon(Icons.check, color: Colors.white, size: 20) : null))).toList()),
                  
                  const SizedBox(height: 24),
                  const Text('الوصف', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('خامة قطنية 100% مريحة جداً للاستخدام اليومي، متوفرة بألوان تناسب جميع الأذواق.', style: TextStyle(fontSize: 16, color: Colors.grey[600], height: 1.5)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: Theme.of(context).cardColor, boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, -5))]),
        child: ElevatedButton(onPressed: () => Get.snackbar('سلة المشتريات', 'تمت الإضافة للسلة', backgroundColor: Colors.green, colorText: Colors.white), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))), child: const Text('إضافة إلى السلة', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))),
      ),
    );
  }
}
