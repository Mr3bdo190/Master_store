import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          // صورة وبيانات المستخدم
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'عبدالرحمن (بودا)', 
            textAlign: TextAlign.center, 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
          ),
          Text(
            'boda@masterstore.com', 
            textAlign: TextAlign.center, 
            style: TextStyle(color: Colors.grey[600], fontSize: 16)
          ),
          const SizedBox(height: 40),

          // خيارات الحساب
          _buildProfileOption(Icons.shopping_bag_outlined, 'طلباتي السابقة'),
          _buildProfileOption(Icons.location_on_outlined, 'عناوين التوصيل'),
          _buildProfileOption(Icons.headset_mic_outlined, 'الدعم الفني والتواصل'),
          _buildProfileOption(Icons.settings_outlined, 'إعدادات الحساب'),
          
          const Padding(padding: EdgeInsets.symmetric(vertical: 16), child: Divider()),
          
          _buildProfileOption(Icons.logout, 'تسجيل الخروج', color: Colors.red),
        ],
      ),
    );
  }

  // دالة مساعدة لعمل أزرار القائمة بشكل نظيف
  Widget _buildProfileOption(IconData icon, String title, {Color color = Colors.black87}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
        child: Icon(icon, color: color),
      ),
      title: Text(title, style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w600)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // سيتم إضافة كود التنقل لاحقاً
      },
    );
  }
}
