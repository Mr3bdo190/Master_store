import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_screen.dart';
import 'forgot_password_screen.dart';
import '../../home/screens/main_layout.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(Icons.shopping_bag_rounded, size: 100, color: Colors.deepPurple),
                  const SizedBox(height: 24),
                  const Text('مرحباً بك في متجرك', textAlign: TextAlign.center, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                  const SizedBox(height: 40),
                  TextFormField(validator: (val) => val!.isEmpty ? 'مطلوب' : null, decoration: InputDecoration(labelText: 'البريد الإلكتروني', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none), prefixIcon: const Icon(Icons.email_outlined, color: Colors.deepPurple))),
                  const SizedBox(height: 16),
                  TextFormField(obscureText: true, validator: (val) => val!.isEmpty ? 'مطلوب' : null, decoration: InputDecoration(labelText: 'كلمة المرور', filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none), prefixIcon: const Icon(Icons.lock_outline, color: Colors.deepPurple))),
                  
                  // ربط زرار نسيت كلمة المرور
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () => Get.to(() => const ForgotPasswordScreen()), 
                      child: const Text('نسيت كلمة المرور؟', style: TextStyle(color: Colors.deepPurple))
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) Get.offAll(() => const MainLayout());
                    },
                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.deepPurple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                    child: const Text('تسجيل الدخول', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                  const SizedBox(height: 16),
                  TextButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text('ليس لديك حساب؟ إنشاء حساب جديد', style: TextStyle(color: Colors.deepPurple, fontSize: 16)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
