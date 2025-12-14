import 'package:flutter/material.dart'; // استيراد مكتبة Flutter الخاصة بالتصميم والواجهات

// تعريف كلاس مخصص لحقل إدخال النص
class CustomTextField extends StatelessWidget {
  // مُنشئ الكلاس مع الخصائص المطلوبة
  const CustomTextField({
    super.key, // مفتاح فريد للودجت (اختياري)
    this.hint, // نص مساعد يظهر داخل الحقل
    this.isPassword = false, // هل الحقل خاص بكلمة مرور؟ القيمة الافتراضية: لا
    required this.cont, // المتحكم في النص داخل الحقل (إجباري)
  });

  final String? hint; // متغير لتخزين النص المساعد داخل الحقل
  final bool isPassword; // متغير لتحديد إذا كان الحقل يخفي النص (كلمة مرور)
  final TextEditingController cont; // متغير للتحكم في النص داخل الحقل

  @override
  Widget build(BuildContext context) {
    // بناء واجهة الودجت
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60), // إضافة هوامش حول الحقل
      child: TextField(
        controller: cont, // ربط الحقل بالمتحكم بالنص
        obscureText: isPassword, // إخفاء النص إذا كان الحقل لكلمة مرور
        decoration: InputDecoration(
          border: OutlineInputBorder(), // تحديد حدود خارجية للحقل
          hintText: hint, // عرض النص المساعد داخل الحقل
        ),
      ),
    );
  }
}