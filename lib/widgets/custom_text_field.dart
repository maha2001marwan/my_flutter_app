import 'package:flutter/material.dart';

// عنصر واجهة مخصص لحقل إدخال يمكن استخدامه للبريد أو كلمة المرور
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hint, this.isPassword = false});

  final String? hint; // نص الإرشاد داخل الحقل (مثل "Email")
  final bool isPassword; // لتحديد إذا كان الحقل خاص بكلمة مرور

  @override
  Widget  build(BuildContext context) {  // اضافة const بيعمل error لانه بياخد متغير وهو الtext المدخل في textfiled
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60), // هامش داخلي للحقل لانه بياخذ كل العرض تبع الشاشة
      child: TextField(
        obscureText: isPassword, // إذا كان الحقل لكلمة مرور، يتم إخفاء النص
        decoration: InputDecoration(
          border: OutlineInputBorder(), // إطار الحقل
          hintText: hint, // نص الإرشاد داخل الحقل
        ),
      ),
    );
  }
}