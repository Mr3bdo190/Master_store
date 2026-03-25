import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.deepPurple),
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: 'ابحث عن منتج...', border: InputBorder.none, hintStyle: TextStyle(color: Colors.grey[400])),
        ),
        actions: [IconButton(icon: const Icon(Icons.filter_list), onPressed: () {})], // زر الفلترة
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('عمليات البحث الأخيرة', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: ['موبايل سامسونج', 'لابتوب ديل', 'ساعة ذكية'].map((e) => Chip(label: Text(e), backgroundColor: Colors.grey[200])).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
