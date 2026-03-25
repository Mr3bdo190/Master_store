import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LegalScreen extends StatelessWidget {
  final String title;
  const LegalScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          'هذا النص هو مثال لنص الشروط والأحكام أو سياسة الخصوصية. سيتم تحديث هذا النص لاحقاً بنص قانوني حقيقي يحمي متجرك الإلكتروني وعملائك ويوضح سياسات الاسترجاع والاستبدال وكيفية استخدام البيانات الشخصية.\n\n' * 5,
          style: const TextStyle(fontSize: 16, height: 1.8),
        ),
      ),
    );
  }
}
