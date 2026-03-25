import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  void _showReviewBottomSheet(BuildContext context) {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor, borderRadius: const BorderRadius.vertical(top: Radius.circular(24))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('إضافة تقييم', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(5, (index) => IconButton(icon: const Icon(Icons.star_border, size: 40, color: Colors.amber), onPressed: (){}))),
              const SizedBox(height: 16),
              TextField(maxLines: 3, decoration: InputDecoration(hintText: 'اكتب رأيك في المنتج هنا...', border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)))),
              const SizedBox(height: 24),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () { Get.back(); Get.snackbar('شكراً لك!', 'تم إرسال تقييمك بنجاح', backgroundColor: Colors.green, colorText: Colors.white); }, style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16)), child: const Text('إرسال التقييم', style: TextStyle(color: Colors.white, fontSize: 18))))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(actions: [IconButton(icon: const Icon(Icons.share_outlined), onPressed: () => Get.snackbar('مشاركة', 'تم نسخ رابط المنتج بنجاح!'))]),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('آراء العملاء', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      TextButton.icon(onPressed: () => _showReviewBottomSheet(context), icon: const Icon(Icons.rate_review, color: Colors.deepPurple), label: const Text('أضف تقييمك', style: TextStyle(color: Colors.deepPurple)))
                    ],
                  ),
                  ListTile(leading: const CircleAvatar(backgroundColor: Colors.deepPurple, child: Icon(Icons.person, color: Colors.white)), title: const Text('أحمد محمد'), subtitle: const Text('منتج ممتاز جداً وتوصيل سريع!'), trailing: const Icon(Icons.star, color: Colors.amber, size: 20))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Theme.of(context).cardColor, boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, -5))]), child: ElevatedButton(onPressed: () => Get.snackbar('سلة المشتريات', 'تمت الإضافة للسلة', backgroundColor: Colors.green, colorText: Colors.white), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))), child: const Text('إضافة إلى السلة', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)))),
    );
  }
}
