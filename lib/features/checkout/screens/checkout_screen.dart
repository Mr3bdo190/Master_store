import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/screens/main_layout.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إتمام الطلب'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const Text('عنوان التوصيل', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          TextFormField(decoration: InputDecoration(labelText: 'العنوان بالتفصيل', filled: true, fillColor: Theme.of(context).cardColor, border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)))),
          const SizedBox(height: 24),
          const Text('طريقة الدفع', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          RadioListTile(value: 1, groupValue: 1, onChanged: (val) {}, title: const Text('الدفع عند الاستلام'), activeColor: Colors.deepPurple),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // نافذة النجاح والرجوع للرئيسية
              Get.defaultDialog(
                title: "تم بنجاح!",
                middleText: "تم استلام طلبك بنجاح وجاري تجهيزه.",
                barrierDismissible: false,
                confirmTextColor: Colors.white,
                buttonColor: Colors.green,
                textConfirm: "العودة للرئيسية",
                onConfirm: () => Get.offAll(() => const MainLayout()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
            child: const Text('تأكيد الطلب', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
