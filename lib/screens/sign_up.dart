
import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/figmaa.dart';
import 'package:my_flutter_app/widgets/custom_text_field.dart'; // استيراد عنصر الإدخال المخصص
import 'package:my_flutter_app/screens/login.dart';

class Signup extends StatelessWidget {
   Signup({super.key});

  // متحكمات لحقل البريد وكلمة المرور
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup')), // شريط التطبيق بعنوان "Signup"
      body: Center(
        child: Column(
          children: [
            // صورة من الإنترنت
            Image.network(
              'https://plus.unsplash.com/premium_photo-1681487814165-01881',
              height: 200,
            ),

        // حقل الاسم
        CustomTextField(
          hint: 'Name',
          cont: nameController,
          validate: (name) {
            return name!.length >= 3 ? null : 'Enter Valid Name';
          },
        ),

        // حقل البريد الإلكتروني
        CustomTextField(
          hint: 'Email',
          cont: emailCont,
          validate: (email) {
            if (email!.contains('@') && email.contains('.')) return null;
            return 'Enter Valid Email';
          },
        ),

        // حقل كلمة المرور
        CustomTextField( validate: (password) {
              if (password != null && password.length >= 8) {
                return null;
              }
              return 'Weak Password';
            },
          hint: 'Password',
          isPassword: true,
          cont: passwordController,
        ),

  // حقل تأكيد كلمة المرور
  CustomTextField(
    hint: 'confirm password',
    isPassword: true,
    cont: confirmPasswordController,
    validate: (confirmPassword) {
      if (confirmPassword == passwordController.text) return null;
      return 'Password must match';
    },
  ),

  // حقل رقم الهاتف
  CustomTextField(
    hint: 'phone number',
    isPassword: true,
    cont: phoneController,
    validate: (phone) {
      if (phone!.startsWith('01')) return null;
      return 'Enter Valid Phone Number';
    },
  ),

  // زر الانتقال لصفحة تسجيل الدخول
  TextButton(child : Text('Already have an account? Login'),
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    },
  ),


          ElevatedButton(
            onPressed: () => _signup(context),
            child: Text('Signup'),
          ),
        ],
   )   ),
    );
  }

// التحقق من النموذج عند الضغط على زر التسجيل
void _signup(BuildContext context) {
  if (_formKey.currentState!.validate()) {
    // إذا كانت البيانات صحيحة، ينتقل المستخدم إلى الصفحة الرئيسية
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  } else {
    // إذا كانت البيانات غير صحيحة، يظهر رسالة خطأ باستخدام SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Enter Valid Credentials'),
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.red,
      ),
    );
  }
}
}