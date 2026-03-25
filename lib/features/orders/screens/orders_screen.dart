import 'package:flutter/material.dart';
import '../../../core/widgets/empty_state_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // هنغير دي بعدين لما نربط بقاعدة البيانات
    bool hasOrders = false; 

    return Scaffold(
      appBar: AppBar(title: const Text('طلباتي', style: TextStyle(color: Colors.deepPurple)), backgroundColor: Colors.white, elevation: 1, iconTheme: const IconThemeData(color: Colors.deepPurple)),
      body: hasOrders 
          ? ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(title: Text('طلب رقم #${index + 1000}')); // تصميم مبدئي للطلب
              },
            )
          : const EmptyStateWidget(
              icon: Icons.receipt_long,
              title: 'لا توجد طلبات سابقة',
              subtitle: 'قم بتصفح المنتجات وأضف ما يعجبك لتسجيل أول طلب لك!',
            ),
    );
  }
}
