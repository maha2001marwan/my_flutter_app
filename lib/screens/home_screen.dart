import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/routes.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // لون خلفية الشاشة
      backgroundColor: const Color(0xFFF8F5FA),
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
 appBar: AppBar(
        // تخصيص شريط التطبيق
        //الapp bar بيكون ابيض لما اعمل scroll بيصير رمادي ليه
        // هيك عدلت الخاصية تبع الapp bar لما اعمل scroll
        backgroundColor: Colors.white, // لون ثابت
//         - هذا يحدد لون خلفية الـ AppBar باللون الأبيض بشكل ثابت.
// - يعني مهما كان الثيم أو الوضع (Light/Dark)، الخلفية ستظهر بيضاء.

        elevation: 0, // بدون ظل عند التمرير
        surfaceTintColor: Colors.transparent, // يمنع تأثير التعتيم
        //  leading: IconButton(
        //           icon: const Icon(Icons.arrow_back),
        //           onPressed: () {
        //             Navigator.pop(context);
        //           },
        //         ),

        //  leading: Icon(Icons.menu),
        //  title: Image.asset('assets/images/shopping-cart.svg', height: 30),
       
        title: Row(
                  children: [
                   
                        Icon(Icons.blur_on, color: Colors.deepPurple),
        SvgPicture.asset(
  'assets/images/logo-79.svg',
  height: 30,
  width: 30,
  fit: BoxFit.contain,
) ] ) , 
        // SvgPicture.asset('assets/images/logo-79.svg', height: 30),
        actions: [
          // Image.asset('assets/images/m1.jpeg'),
          SvgPicture.asset('assets/images/notification-bing.svg', height: 30),
          SizedBox(width: 20),
          // Image.asset('assets/images/m1.jpeg'),
          SvgPicture.asset('assets/images/shopping-cart.svg', height: 30),
          SizedBox(width: 20),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                Routes.login,
                //MaterialPageRoute(builder: (context) => Login()),
              );
            },
            icon: Icon(Icons.logout),
          ), // IconButton
        ],
      ), // AppBar
      // الزر العائم
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context); // عند الضغط، تظهر رسالة SnackBar
        },
        child: const Icon(Icons.add), // أيقونة الزائد
        tooltip: 'إضافة عنصر',

        // الـ tooltip هو نص صغير بيظهر للمستخدم لما يعمل long press (ضغط مطوّل) أو hover (لما يكون التطبيق على الويب/الـ desktop ويوقف الماوس فوق الزر).
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ================= TOP BAR =================
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // Logo
//                     Row(
//                       children:  [
//                         Icon(Icons.blur_on, color: Colors.deepPurple),
//         SvgPicture.asset(
//   'assets/images/logo-79.svg',
//   height: 30,
//   width: 30,
//   fit: BoxFit.contain,
// )                
//                         // Text(
//                         //   'LOGO',
//                         //   style: TextStyle(
//                         //     fontWeight: FontWeight.bold,
//                         //     fontSize: 18,
//                         //   ),
//                         // ),
//                       ],
//                     ),

//                     // Icons
//                     Row(
//                       children: const [
//                         Icon(Icons.favorite_border),
//                         SizedBox(width: 16),
//                         Icon(Icons.notifications_none),
//                         SizedBox(width: 16),
//                         Icon(Icons.shopping_cart_outlined),
//                       ],
//                     ),
//                   ],
//                 ),

                const SizedBox(height: 20),

                // ================= SEARCH BAR =================
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Filter Button
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.menu),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                // ================= STORIES =================
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [

                      // Add Story
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(height: 6),
                          const Text('Your Story', style: TextStyle(fontSize: 12)),
                        ],
                      ),

                      const SizedBox(width: 12),

                      // Story Item
                      storyItem('Sara'),
                      storyItem('Ahmed'),
                      storyItem('Malak'),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ================= TITLE =================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'BEST DEALS FOR YOU',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: const Text('Explore more'),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // ================= BANNER =================
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      // Text
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'LIVE FOR\nFASHION',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Image placeholder
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset('assets/images/m1.jpeg', height: 180, width: 350, fit: BoxFit.fitWidth,),
                        // Icon(
                        //   Icons.image,
                        //   size: 120,
                        //   color: Colors.deepPurple.withOpacity(0.3),
                        ),
                      // ),
                    ],
                  ),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ================= STORY WIDGET =================
  Widget storyItem(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.deepPurple),
            ),
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(
                'assets/images/logo-79.svg',
                // Image.asset('assets/images/m1.jpeg',)
                //const Icon(Icons.person),
              ),
            
          ),
          const SizedBox(height: 6),
          Text(name, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hello تمت إضافة عنصر جديد')));
}