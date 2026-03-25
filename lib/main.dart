import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/intro/screens/splash_screen.dart';

void main() {
  runApp(const MasterStoreApp());
}

class MasterStoreApp extends StatelessWidget {
  const MasterStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // تطبيق خط Cairo على التطبيق بالكامل
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: SplashScreen(), // بدأنا بشاشة البداية
      ),
    );
  }
}
