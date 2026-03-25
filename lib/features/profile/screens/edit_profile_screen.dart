import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تعديل الحساب'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Stack(
              children: [
                const CircleAvatar(radius: 60, backgroundColor: Colors.deepPurple, child: Icon(Icons.person, size: 70, color: Colors.white)),
                Positioned(bottom: 0, right: 0, child: CircleAvatar(backgroundColor: Colors.white, radius: 20, child: IconButton(icon: const Icon(Icons.camera_alt, color: Colors.deepPurple, size: 20), onPressed: () {}))),
              ],
            ),
            const SizedBox(height: 32),
            TextFormField(initialValue: 'عبدالرحمن (بودا)', decoration: InputDecoration(labelText: 'الاسم بالكامل', prefixIcon: const Icon(Icons.person_outline), border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)))),
            const SizedBox(height: 16),
            TextFormField(initialValue: 'boda@masterstore.com', decoration: InputDecoration(labelText: 'البريد الإلكتروني', prefixIcon: const Icon(Icons.email_outlined), border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)))),
            const SizedBox(height: 16),
            TextFormField(initialValue: '01012345678', decoration: InputDecoration(labelText: 'رقم الهاتف', prefixIcon: const Icon(Icons.phone_outlined), border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)))),
            const SizedBox(height: 32),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () { Get.snackbar('نجاح', 'تم تحديث بياناتك بنجاح', backgroundColor: Colors.green, colorText: Colors.white); Get.back(); }, style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))), child: const Text('حفظ التعديلات', style: TextStyle(fontSize: 18, color: Colors.white)))),
          ],
        ),
      ),
    );
  }
}
