import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('عناوين التوصيل'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildAddressCard('المنزل', 'شارع 10، عمارة 5، الدور الثاني، القاهرة', true),
          _buildAddressCard('العمل', 'شارع التسعين، التجمع الخامس، مبنى B', false),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.bottomSheet(
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor, borderRadius: const BorderRadius.vertical(top: Radius.circular(24))),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('إضافة عنوان جديد', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    TextFormField(decoration: InputDecoration(labelText: 'اسم العنوان (مثال: المنزل)', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
                    const SizedBox(height: 12),
                    TextFormField(decoration: InputDecoration(labelText: 'العنوان بالتفصيل', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
                    const SizedBox(height: 24),
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.back(), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: const EdgeInsets.symmetric(vertical: 16)), child: const Text('حفظ العنوان', style: TextStyle(color: Colors.white, fontSize: 18))))
                  ],
                ),
              ),
            ),
          );
        },
        backgroundColor: Colors.deepPurple,
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text('إضافة عنوان', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildAddressCard(String title, String details, bool isDefault) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: isDefault ? Colors.deepPurple : Colors.transparent, width: 2)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(title == 'المنزل' ? Icons.home : Icons.work, color: Colors.deepPurple, size: 30),
        title: Row(children: [Text(title, style: const TextStyle(fontWeight: FontWeight.bold)), if (isDefault) Container(margin: const EdgeInsets.only(right: 8), padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: Colors.deepPurple.withOpacity(0.1), borderRadius: BorderRadius.circular(8)), child: const Text('الافتراضي', style: TextStyle(color: Colors.deepPurple, fontSize: 10)))]),
        subtitle: Padding(padding: const EdgeInsets.only(top: 8.0), child: Text(details)),
        trailing: IconButton(icon: const Icon(Icons.edit, color: Colors.grey), onPressed: (){}),
      ),
    );
  }
}
