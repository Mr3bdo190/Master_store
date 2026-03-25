import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/screens/main_layout.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _paymentMethod = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إتمام الطلب'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const Text('عنوان التوصيل', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ListTile(
            contentPadding: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: Colors.grey.shade300)),
            leading: const Icon(Icons.location_on, color: Colors.deepPurple, size: 30),
            title: const Text('المنزل', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('شارع 10، عمارة 5، الدور الثاني، القاهرة'),
            trailing: TextButton(onPressed: () => Get.snackbar('تعديل', 'فتح خريطة جوجل'), child: const Text('تغيير')),
          ),
          const SizedBox(height: 24),
          const Text('طريقة الدفع', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          RadioListTile(value: 1, groupValue: _paymentMethod, onChanged: (val) => setState(() => _paymentMethod = val as int), title: const Text('الدفع عند الاستلام', style: TextStyle(fontWeight: FontWeight.bold)), activeColor: Colors.deepPurple),
          RadioListTile(value: 2, groupValue: _paymentMethod, onChanged: (val) => setState(() => _paymentMethod = val as int), title: const Text('بطاقة ائتمان (فيزا / ماستركارد)', style: TextStyle(fontWeight: FontWeight.bold)), activeColor: Colors.deepPurple),
          
          // واجهة الفيزا بتظهر بس لو اختار بطاقة ائتمان
          if (_paymentMethod == 2) ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.deepPurple.withOpacity(0.05), borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  TextFormField(decoration: InputDecoration(labelText: 'رقم البطاقة', filled: true, fillColor: Theme.of(context).cardColor, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none), prefixIcon: const Icon(Icons.credit_card))),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: TextFormField(decoration: InputDecoration(labelText: 'تاريخ الانتهاء (MM/YY)', filled: true, fillColor: Theme.of(context).cardColor, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none)))),
                      const SizedBox(width: 16),
                      Expanded(child: TextFormField(decoration: InputDecoration(labelText: 'CVV', filled: true, fillColor: Theme.of(context).cardColor, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none)))),
                    ],
                  )
                ],
              ),
            )
          ],

          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(title: "تم بنجاح!", middleText: "تم استلام طلبك بنجاح.", confirmTextColor: Colors.white, buttonColor: Colors.green, textConfirm: "العودة للرئيسية", onConfirm: () => Get.offAll(() => const MainLayout()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
            child: const Text('تأكيد الطلب ودفع 4500 ج.م', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
