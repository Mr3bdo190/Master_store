import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.deepPurple),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'إنشاء حساب جديد',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                ),
                const SizedBox(height: 8),
                Text(
                  'أكمل بياناتك لتبدأ التسوق',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                const SizedBox(height: 32),
                
                // الاسم الأول والاسم الأخير في نفس السطر
                Row(
                  children: [
                    Expanded(
                      child: _buildTextField('الاسم الأول', Icons.person_outline),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildTextField('الاسم الأخير', Icons.person_outline),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // رقم الهاتف
                _buildTextField('رقم الهاتف', Icons.phone_android_outlined, isPhone: true),
                const SizedBox(height: 16),
                
                // تاريخ الميلاد
                _buildTextField('تاريخ الميلاد', Icons.calendar_today_outlined, isDate: true),
                const SizedBox(height: 16),

                // البريد الإلكتروني
                _buildTextField('البريد الإلكتروني', Icons.email_outlined),
                const SizedBox(height: 16),
                
                // كلمة المرور
                _buildTextField('كلمة المرور', Icons.lock_outline, isPassword: true),
                const SizedBox(height: 16),

                // تأكيد كلمة المرور
                _buildTextField('تأكيد كلمة المرور', Icons.lock_outline, isPassword: true),
                const SizedBox(height: 32),
                
                // زر التسجيل
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    backgroundColor: Colors.deepPurple,
                    elevation: 5,
                  ),
                  child: const Text('إنشاء الحساب', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // دالة مساعدة لعمل الحقول بشكل أنظف وتقليل تكرار الكود
  Widget _buildTextField(String label, IconData icon, {bool isPassword = false, bool isPhone = false, bool isDate = false}) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: isPhone ? TextInputType.phone : (isDate ? TextInputType.datetime : TextInputType.text),
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
        prefixIcon: Icon(icon, color: Colors.deepPurple),
      ),
    );
  }
}
