import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../auth/screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) => setState(() => _currentPage = index),
                children: [
                  _buildPage(Icons.shopping_cart, 'تسوق أسهل', 'اكتشف آلاف المنتجات بضغطة زر'),
                  _buildPage(Icons.local_offer, 'عروض حصرية', 'أفضل الأسعار وخصومات يومية مستمرة'),
                  _buildPage(Icons.local_shipping, 'توصيل سريع', 'طلبك هيوصلك لحد باب البيت في أسرع وقت'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Get.offAll(() => LoginScreen()), // تم إزالة const واستخدام GetX
                    child: const Text('تخطي', style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_currentPage == 2) {
                        Get.offAll(() => LoginScreen()); // تم إزالة const واستخدام GetX
                      } else {
                        _controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                      }
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                    child: Text(_currentPage == 2 ? 'ابدأ الآن' : 'التالي', style: const TextStyle(color: Colors.white)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPage(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 150, color: Colors.deepPurple),
          const SizedBox(height: 40),
          Text(title, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
          const SizedBox(height: 16),
          Text(subtitle, textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.grey[600])),
        ],
      ),
    );
  }
}
