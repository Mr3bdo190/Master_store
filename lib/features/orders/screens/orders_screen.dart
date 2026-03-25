import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'order_tracking_screen.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('طلباتي'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const CircleAvatar(backgroundColor: Colors.deepPurple, child: Icon(Icons.shopping_bag, color: Colors.white)),
              title: Text('طلب رقم #${1000 + index}', style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('التاريخ: 25 أكتوبر 2023\nالحالة: جاري التجهيز'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => Get.to(() => const OrderTrackingScreen()), // الانتقال لشاشة التتبع
            ),
          );
        },
      ),
    );
  }
}
