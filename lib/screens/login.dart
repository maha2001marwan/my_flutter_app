import 'package:flutter/material.dart';
import 'package:my_flutter_app/sections.dart/custom_text_field.dart'; // استيراد عنصر الإدخال المخصص
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/routes.dart';

class Login extends StatefulWidget {
  Login({super.key}); 
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 // مُنشئ ثابت بدون مفتاح محدد
 final TextEditingController emailCont = TextEditingController(); 
 // إنشاء متحكم لحقل إدخال البريد الإلكتروني
final TextEditingController passWordController = TextEditingController(); 
 // إنشاء متحكم لحقل إدخال كلمة المرور
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // خلفية الصفحة
      backgroundColor: const Color(0xFFF5F6FA),
     // appBar: AppBar(title: Text('Login')), // شريط التطبيق بعنوان "Login"
      body: Center( child:  SingleChildScrollView(

           child: Padding(
          padding: const EdgeInsets.all(16.0),

         child: Form(
            key: _formKey, // ربط النموذج بالمفتاح

        child: Column(
          children: [
               // أيقونة فوق النصوص
    // Icon(
    //   Icons.lock_outline, // ممكن تختاري أيقونة ثانية مثل Icons.person
    //   size: 64,
    //   color: Colors.blue,
    // ),
    SizedBox(height: 100),
        SvgPicture.asset(
      'assets/images/logo-79.svg',
      height: 30,width: 30, // حجم أكبر من 30 ليظهر واضح
    ),
            // Image.network(
            //   'https://plus.unsplash.com/premium_photo-1681487814165-018814e29155?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxZWFyY2h8MXx8fHx8fDJ8fA%3D%3D',
            //   height: 200, // صورة من الإنترنت بارتفاع 200
            // ),
            // TextField(
            //   controller:
            //       fieldCont, // ربط حقل الإدخال بالمتحكم لقراءة أو تعديل النص
            // ),
// Text(
//   'Welcome Back!',
//   style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
// ),
 RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Back!',
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
  'Login to your account',
  style: GoogleFonts.poppins(fontSize: 10, color: Colors.grey),
),
SizedBox(height: 16),
            CustomTextField(hint: 'Email or Phone Number', cont: emailCont,  
               validate: (email) {
                  if (email == null || !email.contains('@') || !email.contains('.')) {
                    return 'Email must contain @ and ( . )';
                  }
                  return null;
                },
               // validate: (email) => email!.contains('@') ? null : 'Enter Valid Email', // عكست الشرط // التحقق من صحة البريد الإلكتروني            // validate: (email) {
            //   if (email != null && email.contains('@') && email.contains('.')) {
            //     return null;
            //   }
            //   return 'Enter Valid Email';
            // },
            // validate: (value) {
            //         if (value == null || value.isEmpty) {
            //           return 'يرجى إدخال البريد الإلكتروني';
            //         }
            //         return null;
            //       },
), // حقل إدخال للبريد الإلكتروني
            CustomTextField( suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.blueGrey,
                      size: 20,
                    ),
              hint: 'password',
              isPassword: true,cont: passWordController,  validate: (password) {
              if (password != null && password.length >= 8) {
                return null;
              }
              return 'Weak Password';
            },

                // validate: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'يرجى إدخال كلمة المرور';
                //     }
                //     return null;
                //   }
            ), // حقل إدخال لكلمة المرور مع إخفاء النص
            ElevatedButton(
               style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // اللون الأزرق
    padding: EdgeInsets.symmetric(horizontal: 145, vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),

              onPressed: () {
 // عرض البيانات المدخلة في SnackBar
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text(
                //       '${emailCont.text} ${passWordController.text}',
                //     ),
                //   ),
                // );

                // // تفريغ الحقول بعد الضغط
                // emailCont.clear();
                // passWordController.clear();
              


                _login(context);
                  // عند الضغط يتم تنفيذ دالة تسجيل الدخول

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
               child: isLoading ? CircularProgressIndicator() : 
                
                 Text('login', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),

               // النص الظاهر داخل الزر
            ),
                            TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,Routes.signup,
                     // MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text("Don't have an account? Signup now",style: TextStyle( fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(110, 0, 0, 0),
                      ),),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,Routes.main,
                    //   MaterialPageRoute(builder: (context) =>HomeScreen()
                     //  ForgetPassword()
                    //    ),
                    );
                  },
                  child: Text("Forget Password ?",style: TextStyle( fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(134, 0, 0, 0),),
               // النص الظاهر داخل الزر
            ),),
                //             TextButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Signup()),
                //     );
                //   },
                //   child: Text("Don't have an account ? Signup now",style: TextStyle( fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //         color: const Color.fromARGB(134, 0, 0, 0),),
                // ), ),
          ],
        ),
      ), ),),)
    );
  }

  // دالة التنقل إلى صفحة Home بعد تسجيل الدخول
   _login(BuildContext context) async {
     setState(() {
      isLoading = true;
    });

  await  Future.delayed(Duration(seconds: 2)); 
setState(() {
      isLoading = false;
    });
    // التحقق من صحة النموذج قبل المتابعة
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.pushReplacementNamed(
        context,Routes.home,arguments: emailCont.text
       // MaterialPageRoute(builder: (context) => Home()),
        );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Enter Valid Credentials'),
          duration: Duration(milliseconds: 500),
          backgroundColor: Colors.red,
        ),
      );

    }
    //  var email = emailCont.text;
    // var password = passWordController.text;

    // emailCont.clear();
    // passWordController.clear();
    // // التحقق من أن الحقول غير فارغة
    // if (email.isEmpty || password.isEmpty) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('please enter your data')),
    //   );
    // }
    // if (!email.contains('@') || !email.contains('.') || password.length < 8) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text('Enter Valid Credentials'),
    //       duration: Duration(milliseconds: 500),
    //       backgroundColor: Colors.red,
    //     ),
    //   );
    // } else {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => Home()),
    //   );
    // }

  }
}



