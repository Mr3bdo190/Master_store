import 'package:flutter/material.dart';

class SupportChatScreen extends StatelessWidget {
  const SupportChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الدعم الفني', style: TextStyle(color: Colors.deepPurple)), backgroundColor: Colors.white, elevation: 1, iconTheme: const IconThemeData(color: Colors.deepPurple)),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Align(alignment: Alignment.centerLeft, child: Container(padding: const EdgeInsets.all(12), margin: const EdgeInsets.only(bottom: 16), decoration: BoxDecoration(color: Colors.grey[200], borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16), bottomRight: Radius.circular(16))), child: const Text('مرحباً بك! كيف يمكننا مساعدتك اليوم؟'))),
                Align(alignment: Alignment.centerRight, child: Container(padding: const EdgeInsets.all(12), margin: const EdgeInsets.only(bottom: 16), decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16), bottomLeft: Radius.circular(16))), child: const Text('عندي مشكلة في الطلب الأخير', style: TextStyle(color: Colors.white)))),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(hintText: 'اكتب رسالتك هنا...', border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none), filled: true, fillColor: Colors.grey[100], contentPadding: const EdgeInsets.symmetric(horizontal: 20)))),
                const SizedBox(width: 8),
                CircleAvatar(backgroundColor: Colors.deepPurple, child: IconButton(icon: const Icon(Icons.send, color: Colors.white), onPressed: () {})),
              ],
            ),
          )
        ],
      ),
    );
  }
}
