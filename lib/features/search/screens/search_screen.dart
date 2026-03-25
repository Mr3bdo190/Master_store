import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  void _showFilterBottomSheet(BuildContext context) {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor, borderRadius: const BorderRadius.vertical(top: Radius.circular(24))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('فلترة النتائج', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            const Text('نطاق السعر:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            RangeSlider(values: const RangeValues(100, 5000), min: 0, max: 10000, divisions: 100, labels: const RangeLabels('100', '5000'), activeColor: Colors.deepPurple, onChanged: (val) {}),
            const SizedBox(height: 16),
            const Text('ترتيب حسب:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Wrap(
              spacing: 8,
              children: ['الأحدث', 'الأقل سعراً', 'الأعلى سعراً'].map((e) => ChoiceChip(label: Text(e), selected: e == 'الأحدث', selectedColor: Colors.deepPurple.withOpacity(0.2), onSelected: (val){})).toList(),
            ),
            const SizedBox(height: 32),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.back(), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16)), child: const Text('تطبيق الفلتر', style: TextStyle(color: Colors.white, fontSize: 18))))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(autofocus: true, decoration: InputDecoration(hintText: 'ابحث عن منتج...', border: InputBorder.none)),
        actions: [IconButton(icon: const Icon(Icons.tune), onPressed: () => _showFilterBottomSheet(context))], // زرار الفلتر
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('عمليات البحث الأخيرة', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(spacing: 8, children: ['موبايل سامسونج', 'لابتوب ديل', 'ساعة ذكية'].map((e) => Chip(label: Text(e))).toList()),
          ],
        ),
      ),
    );
  }
}
