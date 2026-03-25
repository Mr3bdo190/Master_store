import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'features/intro/screens/splash_screen.dart';

void main() {
  runApp(const MasterStoreApp());
}

class MasterStoreApp extends StatelessWidget {
  const MasterStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    // استخدمنا GetMaterialApp بدل MaterialApp علشان قوة GetX في التنقل وإدارة الحالة
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
      ),
      textDirection: TextDirection.rtl, // تحديد الاتجاه الافتراضي للتطبيق كله
      home: const SplashScreen(),
    );
  }
}
