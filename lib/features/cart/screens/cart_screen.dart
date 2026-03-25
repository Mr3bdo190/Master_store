import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../checkout/screens/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(16.0), child: Text('سلة المشتريات', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple))),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(width: 80, height: 80, decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)), child: const Icon(Icons.shopping_bag)),
                        const SizedBox(width: 16),
                        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('منتج ${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold)), const Text('1500 ج.م', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold))])),
                        Row(children: [IconButton(icon: const Icon(Icons.remove_circle_outline), onPressed: (){}), const Text('1'), IconButton(icon: const Icon(Icons.add_circle_outline), onPressed: (){})])
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // حقل كوبون الخصم
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(hintText: 'أدخل كود الخصم', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none)))),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24)), child: const Text('تطبيق', style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [Text('الإجمالي:', style: TextStyle(color: Colors.grey, fontSize: 16)), Text('3000 ج.م', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple))]),
                ElevatedButton(
                  onPressed: () => Get.to(() => const CheckoutScreen()), 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))), 
                  child: const Text('إتمام الطلب', style: TextStyle(fontSize: 18, color: Colors.white)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
