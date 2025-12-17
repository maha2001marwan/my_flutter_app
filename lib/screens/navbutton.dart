import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/screens/login.dart';
 import 'package:my_flutter_app/widgets/routes.dart';
 import 'package:my_flutter_app/screens/figmaa.dart';
 //import 'package:flutter_svg/flutter_svg.dart';

class Navbutton extends StatefulWidget {
  const Navbutton({super.key});

  @override
  State<Navbutton> createState() => _NavbuttonState();
}

class _NavbuttonState extends State<Navbutton> {
  // المتغير اللي بيحدد محتوى الشاشة حسب الزر المختار
  // Widget data = HomeScreen();
  List<Widget> screens = [Login(), Home(), HomeScreen()];
  // مؤشر الزر الحالي
  int index =1;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color(0xFFF8F5FA),
    // القائمة الجانبية (Drawer)
      drawer: Drawer(
        child: Column(

          children: [
            // عنصر تسجيل الدخول
            ListTile(
              title: Text('Login'),
              onTap: () => Navigator.pushNamed(context, Routes.login),
            ),
            // عنصر إنشاء حساب
            ListTile(
              title: Text('Signup'),
              onTap: () => Navigator.pushNamed(context, Routes.signup),
            ),
          ],
        ),
      ),

      // شريط التطبيق العلوي
//       appBar: AppBar(
//         // تخصيص شريط التطبيق
//         //الapp bar بيكون ابيض لما اعمل scroll بيصير رمادي ليه
//         // هيك عدلت الخاصية تبع الapp bar لما اعمل scroll
//         backgroundColor: Colors.white, // لون ثابت
// //         - هذا يحدد لون خلفية الـ AppBar باللون الأبيض بشكل ثابت.
// // - يعني مهما كان الثيم أو الوضع (Light/Dark)، الخلفية ستظهر بيضاء.

//         elevation: 0, // بدون ظل عند التمرير
//         surfaceTintColor: Colors.transparent, // يمنع تأثير التعتيم
//         //  leading: IconButton(
//         //           icon: const Icon(Icons.arrow_back),
//         //           onPressed: () {
//         //             Navigator.pop(context);
//         //           },
//         //         ),

//         //  leading: Icon(Icons.menu),
//         //  title: Image.asset('assets/images/shopping-cart.svg', height: 30),
//         title: SvgPicture.asset('assets/images/logo-79.svg', height: 30),
//         actions: [
//           // Image.asset('assets/images/m1.jpeg'),
//           SvgPicture.asset('assets/images/notification-bing.svg', height: 30),
//           SizedBox(width: 20),
//           // Image.asset('assets/images/m1.jpeg'),
//           SvgPicture.asset('assets/images/shopping-cart.svg', height: 30),
//           SizedBox(width: 20),
//           IconButton(
//             onPressed: () {
//               Navigator.pushReplacementNamed(
//                 context,
//                 Routes.login,
//                 //MaterialPageRoute(builder: (context) => Login()),
//               );
//             },
//             icon: Icon(Icons.logout),
//           ), // IconButton
//         ],
//       ), // AppBar
      // الزر العائم
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context); // عند الضغط، تظهر رسالة SnackBar
        },
        child: const Icon(Icons.add), // أيقونة الزائد
        tooltip: 'إضافة عنصر',

        // الـ tooltip هو نص صغير بيظهر للمستخدم لما يعمل long press (ضغط مطوّل) أو hover (لما يكون التطبيق على الويب/الـ desktop ويوقف الماوس فوق الزر).
      ),

      // محتوى الشاشة حسب الزر المختار
     body: 
  //    SingleChildScrollView(
  // child: Padding(
  //   padding: const EdgeInsets.all(8.0),
    // child: // بيعمل error
    screens[index],
  // ),
// ),

         
       
  bottomNavigationBar: BottomNavigationBar(
     type: BottomNavigationBarType.fixed, // يثبت العناصر
  backgroundColor: Color(0xFF827BE8), // خلفية موف زي لون الزر
   selectedItemColor: Colors.white,    // لون العنصر المختار
  unselectedItemColor: Colors.white70, // لون العناصر غير المختارة
  showSelectedLabels: true, // تظهر العناوين مع العناصر المختارة
  showUnselectedLabels: true, // تظهر العناوين مع العناصر غير المختارة
    elevation: 8, 
    currentIndex: index,
    onTap: (value) {
      setState(() {
        index = value;
      });
    },
     items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
            ),
    );
    }
  }
  void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hello تمت إضافة عنصر جديد')));
}