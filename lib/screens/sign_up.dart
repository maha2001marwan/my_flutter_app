
import 'package:flutter/material.dart';
import 'package:my_flutter_app/sections.dart/custom_text_field.dart'; // استيراد عنصر الإدخال المخصص
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_app/routes.dart';
// import 'package:my_flutter_app/screens/figmaa.dart';

class Signup extends StatefulWidget {
   Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // متحكمات لحقل البريد وكلمة المرور
  final TextEditingController emailCont = TextEditingController();

 final  TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color(0xFFF5F6FA),

   //   appBar: AppBar(title: Text('Signup')), // شريط التطبيق بعنوان "Signup"
      body: Center(
          child:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
      
          child: Form(
            key: _formKey,
          child: Column(
            children: [
              // صورة من الإنترنت
               SvgPicture.asset(
                'assets/images/logo-79.svg',
                height: 30,width: 30, // حجم أكبر من 30 ليظهر واضح
              ),
           RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hi, Create Your ',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Account!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ), ],
                    ),
                  ),
          SizedBox(height: 8),
          Text(
            'make your account',
            style: GoogleFonts.poppins(fontSize: 10, color: Colors.grey),
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
          CustomTextField( 
             suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.blueGrey,
                      size: 20,
                    ),
            validate: (password) {
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
            CustomTextField( suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.blueGrey,
                      size: 20,
                    ),
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
                Navigator.pushReplacementNamed(
          context,Routes.login,
          //MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          
          
            ElevatedButton( style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, ),
              onPressed: () => _signup(context),
               child: isLoading ? CircularProgressIndicator() : 

               Text('Sign up',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,),
              )  ),
          ],
             ),
        )  )   ),)
    );
  }

// التحقق من النموذج عند الضغط على زر التسجيل
 _signup(BuildContext context)async {
   setState(() {
      isLoading = true;
    });

  await  Future.delayed(Duration(seconds: 2)); 
 setState(() {
      isLoading = false;
    });
  if (_formKey.currentState!.validate()) {
    // إذا كانت البيانات صحيحة، ينتقل المستخدم إلى الصفحة الرئيسية
    Navigator.pushReplacementNamed(
      // Navigator.pushReplacement(
      context,
      Routes.home,arguments: nameController.text
    //  MaterialPageRoute(builder: (context) => Home(name: nameController.text)),
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