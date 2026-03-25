import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إتمام الطلب', style: TextStyle(color: Colors.deepPurple)), backgroundColor: Colors.white, elevation: 0, iconTheme: const IconThemeData(color: Colors.deepPurple)),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const Text('عنوان التوصيل', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          TextFormField(decoration: InputDecoration(labelText: 'العنوان بالتفصيل', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)))),
          const SizedBox(height: 24),
          const Text('طريقة الدفع', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          RadioListTile(value: 1, groupValue: 1, onChanged: (val) {}, title: const Text('الدفع عند الاستلام'), activeColor: Colors.deepPurple),
          RadioListTile(value: 2, groupValue: 1, onChanged: (val) {}, title: const Text('بطاقة ائتمان'), activeColor: Colors.deepPurple),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.deepPurple.withOpacity(0.1), borderRadius: BorderRadius.circular(16)),
            child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('الإجمالي:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), Text('4500 ج.م', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple))]),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
            child: const Text('تأكيد الطلب', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
