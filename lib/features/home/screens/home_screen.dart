import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../search/screens/search_screen.dart';
import '../../products/screens/product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // تفعيل شريط البحث لينقلك لشاشة البحث
            TextField(
              readOnly: true, // عشان ميفتحش الكيبورد هنا، بل ينقلك للشاشة التانية
              onTap: () => Get.to(() => const SearchScreen()),
              decoration: InputDecoration(hintText: 'بتبحث عن إيه؟', prefixIcon: const Icon(Icons.search, color: Colors.deepPurple), filled: true, fillColor: Theme.of(context).cardColor, border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none)),
            ),
            const SizedBox(height: 24),
            const Text('أقوى العروض', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            const SizedBox(height: 12),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => Container(width: 280, margin: const EdgeInsets.only(left: 16), decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurple, Colors.deepPurple.shade300]), borderRadius: BorderRadius.circular(16)), child: const Center(child: Text('خصم 50%', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)))),
              ),
            ),
            const SizedBox(height: 24),
            const Text('وصل حديثاً', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.75, crossAxisSpacing: 16, mainAxisSpacing: 16),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                  // الانتقال لصفحة تفاصيل المنتج عند الضغط على الكارت
                  onTap: () => Get.to(() => const ProductDetailsScreen()),
                  child: Container(
                    decoration: BoxDecoration(color: Theme.of(context).cardColor, borderRadius: BorderRadius.circular(16), boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 5)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Container(decoration: BoxDecoration(color: Colors.grey[200], borderRadius: const BorderRadius.vertical(top: Radius.circular(16))), child: const Center(child: Icon(Icons.image_outlined, size: 50, color: Colors.grey)))),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('منتج جامد ${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold), maxLines: 1),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('1500 ج.م', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
                                  GestureDetector(
                                    // إشعار إضافة للسلة
                                    onTap: () => Get.snackbar('سلة المشتريات', 'تم إضافة المنتج للسلة بنجاح', backgroundColor: Colors.green, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM),
                                    child: Container(padding: const EdgeInsets.all(4), decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(8)), child: const Icon(Icons.add_shopping_cart, size: 16, color: Colors.white)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
