import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/theme/app_theme.dart';
import 'core/localization/app_translations.dart';
import 'features/intro/screens/splash_screen.dart';

void main() {
  runApp(const MasterStoreApp());
}

class MasterStoreApp extends StatelessWidget {
  const MasterStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Store',
      
      // إعدادات الوضع الليلي
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system, // بيأخد وضع الجهاز الافتراضي في البداية
      
      // إعدادات اللغات
      translations: AppTranslations(),
      locale: const Locale('ar', 'EG'), // اللغة الافتراضية
      fallbackLocale: const Locale('en', 'US'), // لو حصل خطأ يرجع للإنجليزي
      
      home: const SplashScreen(),
    );
  }
}
