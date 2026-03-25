import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../legal/screens/legal_screen.dart';
import '../../orders/screens/orders_screen.dart';
import '../../support/screens/support_chat_screen.dart';
import '../../auth/screens/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const Center(child: CircleAvatar(radius: 50, backgroundColor: Colors.deepPurple, child: Icon(Icons.person, size: 60, color: Colors.white))),
          const SizedBox(height: 16),
          const Text('عبدالرحمن (بودا)', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Text('boda@masterstore.com', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 16)),
          const SizedBox(height: 40),

          _buildProfileOption(Icons.shopping_bag_outlined, 'طلباتي السابقة', onTap: () => Get.to(() => const OrdersScreen())),
          _buildProfileOption(Icons.location_on_outlined, 'عناوين التوصيل', onTap: () => Get.snackbar('إضافة عنوان', 'سيتم فتح خريطة جوجل لتحديد موقعك بدقة قريباً!')),
          _buildProfileOption(Icons.headset_mic_outlined, 'الدعم الفني والتواصل', onTap: () => Get.to(() => const SupportChatScreen())),
          
          const Divider(height: 32),
          ListTile(leading: const Icon(Icons.dark_mode_outlined), title: Text('dark_mode'.tr, style: const TextStyle(fontWeight: FontWeight.bold)), trailing: Switch(value: Get.isDarkMode, activeColor: Colors.deepPurple, onChanged: (val) => Get.changeThemeMode(val ? ThemeMode.dark : ThemeMode.light))),
          ListTile(leading: const Icon(Icons.language), title: Text('language'.tr, style: const TextStyle(fontWeight: FontWeight.bold)), trailing: TextButton(onPressed: () => Get.updateLocale(Get.locale?.languageCode == 'ar' ? const Locale('en', 'US') : const Locale('ar', 'EG')), child: Text(Get.locale?.languageCode == 'ar' ? 'English' : 'العربية', style: const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)))),
          
          const Divider(height: 32),
          _buildProfileOption(Icons.description_outlined, 'terms'.tr, onTap: () => Get.to(() => LegalScreen(title: 'terms'.tr))),
          _buildProfileOption(Icons.privacy_tip_outlined, 'privacy'.tr, onTap: () => Get.to(() => LegalScreen(title: 'privacy'.tr))),
          
          const Divider(height: 32),
          _buildProfileOption(Icons.logout, 'logout'.tr, color: Colors.red, onTap: () {
            Get.defaultDialog(title: "تسجيل الخروج", middleText: "هل أنت متأكد؟", textConfirm: "نعم", textCancel: "إلغاء", confirmTextColor: Colors.white, buttonColor: Colors.red, onConfirm: () => Get.offAll(() => LoginScreen()));
          }),
        ],
      ),
    );
  }

  Widget _buildProfileOption(IconData icon, String title, {Color color = Colors.black87, required VoidCallback onTap}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(color: color == Colors.black87 ? Colors.deepPurple.withOpacity(0.1) : color.withOpacity(0.1), borderRadius: BorderRadius.circular(12)), child: Icon(icon, color: color == Colors.black87 ? Colors.deepPurple : color)),
      title: Text(title, style: TextStyle(color: color == Colors.black87 ? null : color, fontSize: 18, fontWeight: FontWeight.w600)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}
