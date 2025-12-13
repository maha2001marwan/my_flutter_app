import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/figmaa.dart';
import 'package:my_flutter_app/widgets/custom_text_field.dart'; // استيراد عنصر الإدخال المخصص

class Login extends StatelessWidget {
  const Login({super.key}); // مُنشئ ثابت بدون مفتاح محدد

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')), // شريط التطبيق بعنوان "Login"
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://plus.unsplash.com/premium_photo-1681487814165-018814e29155?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxZWFyY2h8MXx8fHx8fDJ8fA%3D%3D',
              height: 200, // صورة من الإنترنت بارتفاع 200
            ),
            CustomTextField(hint: 'Email'), // حقل إدخال للبريد الإلكتروني
            CustomTextField(hint: 'password', isPassword: true), // حقل إدخال لكلمة المرور مع إخفاء النص
            ElevatedButton(
              onPressed: () {
                _login(context); // عند الضغط يتم تنفيذ دالة تسجيل الدخول
              },
              child: Text('login'), // نص الزر
            ),
          ],
        ),
      ),
    );

  }

  // دالة التنقل إلى صفحة Home بعد تسجيل الدخول
  _login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
      //     builder: (context) {
      //   return Home(); // الانتقال إلى شاشة الصفحة الرئيسية
      // },
      // اختصرته في سطر واحد
        builder: (context) => Home(), // التنقل إلى صفحة Home
      ),
    );
  }
}