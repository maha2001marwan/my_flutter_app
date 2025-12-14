import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/figmaa.dart';
import 'package:my_flutter_app/widgets/custom_text_field.dart'; // استيراد عنصر الإدخال المخصص

class Login extends StatelessWidget {
  Login({super.key}); // مُنشئ ثابت بدون مفتاح محدد
  // TextEditingController fieldCont =
  //     TextEditingController(); // إنشاء متحكم لحقل النص لتخزين واسترجاع القيم المدخلة
 TextEditingController emailCont = TextEditingController(); // إنشاء متحكم لحقل إدخال البريد الإلكتروني
TextEditingController passWordController = TextEditingController(); // إنشاء متحكم لحقل إدخال كلمة المرور
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
            // TextField(
            //   controller:
            //       fieldCont, // ربط حقل الإدخال بالمتحكم لقراءة أو تعديل النص
            // ),

            CustomTextField(hint: 'Email', cont: emailCont,), // حقل إدخال للبريد الإلكتروني
            CustomTextField(
              hint: 'password',
              isPassword: true,cont: passWordController,
            ), // حقل إدخال لكلمة المرور مع إخفاء النص
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(
                  255,
                  193,
                  7,
                  1,
                ), // لون زر التسجيل الدخول
              ),

              onPressed: () {
                 _login(context); // عند الضغط يتم تنفيذ دالة تسجيل الدخول

                // var text =
                //     fieldCont.text; // قراءة النص من الحقل وتخزينه في متغير
                // fieldCont.clear(); // مسح محتوى الحقل بعد الضغط على الزر
                // ScaffoldMessenger.of(context).showSnackBar(
                  // عرض رسالة مؤقتة (SnackBar) في أسفل الشاشة
                //   SnackBar(
                //     content: Text(
                //       text,
                //     ), // محتوى الرسالة هو النص الذي أدخله المستخدم
                //   ),
                // );
              },
              child: Text('login'), // النص الظاهر داخل الزر
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
