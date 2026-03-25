import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('محفظتي'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurple, Colors.deepPurple.shade300]), borderRadius: BorderRadius.circular(24), boxShadow: [BoxShadow(color: Colors.deepPurple.withOpacity(0.3), blurRadius: 15, offset: const Offset(0, 10))]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('الرصيد المتاح', style: TextStyle(color: Colors.white70, fontSize: 16)),
                const SizedBox(height: 8),
                const Text('250.00 ج.م', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold)),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [Text('نقاط الولاء', style: TextStyle(color: Colors.white70)), Text('1200 نقطة', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18))]),
                    const Icon(Icons.account_balance_wallet, color: Colors.white, size: 40)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 32),
          const Text('سجل المعاملات', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          _buildTransaction(Icons.add_circle, 'استرداد نقدي (Cashback)', '+ 50 ج.م', Colors.green),
          _buildTransaction(Icons.remove_circle, 'خصم من طلب #1002', '- 100 ج.م', Colors.red),
          _buildTransaction(Icons.card_giftcard, 'هدية تسجيل الدخول', '+ 300 نقطة', Colors.orange),
        ],
      ),
    );
  }

  Widget _buildTransaction(IconData icon, String title, String amount, Color color) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(backgroundColor: color.withOpacity(0.1), child: Icon(icon, color: color)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text('25 أكتوبر 2023'),
      trailing: Text(amount, style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}
