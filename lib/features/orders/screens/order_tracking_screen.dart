import 'package:flutter/material.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تتبع الطلب'), centerTitle: true),
      body: Stepper(
        currentStep: 1, // الخطوة الحالية (جاري التجهيز)
        controlsBuilder: (context, details) => const SizedBox.shrink(), // إخفاء زراير Next و Cancel الافتراضية
        steps: const [
          Step(title: Text('تم تأكيد الطلب', style: TextStyle(fontWeight: FontWeight.bold)), content: Text('تم استلام طلبك بنجاح'), isActive: true, state: StepState.complete),
          Step(title: Text('جاري التجهيز', style: TextStyle(fontWeight: FontWeight.bold)), content: Text('يقوم البائع بتغليف طلبك الآن'), isActive: true, state: StepState.editing),
          Step(title: Text('في الطريق إليك', style: TextStyle(fontWeight: FontWeight.bold)), content: Text('المندوب في طريقه إليك'), isActive: false, state: StepState.indexed),
          Step(title: Text('تم التسليم', style: TextStyle(fontWeight: FontWeight.bold)), content: Text('نتمنى لك تجربة تسوق ممتعة'), isActive: false, state: StepState.indexed),
        ],
      ),
    );
  }
}
