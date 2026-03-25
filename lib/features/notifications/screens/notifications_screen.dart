import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإشعارات'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildNotificationCard(Icons.local_shipping, 'طلبك في الطريق!', 'مندوب الشحن في طريقه إليك لتسليم الطلب رقم #1005.', Colors.green),
          _buildNotificationCard(Icons.local_offer, 'عرض حصري لك', 'خصم 20% على جميع الإلكترونيات لفترة محدودة.', Colors.deepPurple),
          _buildNotificationCard(Icons.check_circle, 'تم تأكيد طلبك', 'تم استلام طلبك بنجاح وجاري تجهيزه الآن.', Colors.blue),
        ],
      ),
    );
  }

  Widget _buildNotificationCard(IconData icon, String title, String subtitle, Color color) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(backgroundColor: color.withOpacity(0.1), child: Icon(icon, color: color)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(height: 1.5)),
        trailing: const Text('الآن', style: TextStyle(color: Colors.grey, fontSize: 12)),
      ),
    );
  }
}
