import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'profile': 'حسابي',
          'dark_mode': 'الوضع الليلي',
          'language': 'اللغة',
          'terms': 'الشروط والأحكام',
          'privacy': 'سياسة الخصوصية',
          'about': 'من نحن',
          'logout': 'تسجيل الخروج',
        },
        'en': {
          'profile': 'Profile',
          'dark_mode': 'Dark Mode',
          'language': 'Language',
          'terms': 'Terms & Conditions',
          'privacy': 'Privacy Policy',
          'about': 'About Us',
          'logout': 'Logout',
        }
      };
}
