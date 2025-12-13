import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/widgets/section_widget.dart';
import 'package:my_flutter_app/widgets/freelancer_info.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      // زر عائم للرجوع إلى الشاشة السابقة
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // يرجع إلى الشاشة السابقة
       // onPressed: () {
  //         showSnackBar(context); // دالة لعرض رسالة مؤقتة
  // زر عائم يظهر SnackBar عند الضغط


// هاد قبل ما اعمل لل showSnackBar دالة يظهر SnackBar عند الضغط
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text('Hello')), // رسالة مؤقتة تظهر أسفل الشاشة
      //     );
      //   },
      // ),


        },
      ),
  

      // شريط التطبيق يحتوي على أيقونة، شعار، وأيقونات تنبيه وسلة

    appBar: AppBar(
      // تخصيص شريط التطبيق
      //الapp bar بيكون ابيض لما اعمل scroll بيصير رمادي ليه 
      // هيك عدلت الخاصية تبع الapp bar لما اعمل scroll
       backgroundColor: Colors.white, // لون ثابت
  elevation: 0, // بدون ظل عند التمرير
  surfaceTintColor: Colors.transparent, // يمنع تأثير التعتيم

      leading: Icon(Icons.menu),
      //  title: Image.asset('assets/images/shopping-cart.svg', height: 30),
      title: SvgPicture.asset('assets/images/logo-79.svg', height: 30),
      actions: [
        // Image.asset('assets/images/m1.jpeg'),
        SvgPicture.asset('assets/images/notification-bing.svg', height: 30),
        SizedBox(width: 20),
        // Image.asset('assets/images/m1.jpeg'),
        SvgPicture.asset('assets/images/shopping-cart.svg', height: 30),
        SizedBox(width: 20),
      ],
    ), // AppBar

    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                // children: [
                //   TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ), // OutlineInputBorder
                //     ), // InputDecoration
                //   ), // TextField
                //   Icon(Icons.sort),
                // ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // SizedBox(
                    //   width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  //  Icon(Icons.sort),
                  const SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.sort),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity, // ياخد عرض الشاشة
                height: 200,
                // هنا بيشتغل لأنه داخل SizedBox
                child: Image.asset(
                  'assets/images/Group1.png',
                  fit: BoxFit.fill,
                ),
              ),
              //   SvgPicture.asset('assets/images/offer.svg', height: 30, fit: BoxFit.fitWidth),
              SizedBox(height: 20),
              SectionWidget(sectionTitle: 'Top Rated Freelances'),
              SizedBox(height: 10),

              // تمرير أفقي يسمح بالتمرير داخل صف من العناصر
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // تحديد اتجاه التمرير ليكون أفقي
                child: Row(
                  // صف يحتوي على عناصر FreelancerInfo
                  children: [
                    // عنصر يعرض معلومات مستقل: صورة، اسم، وظيفة، وتقييم
                    FreelancerInfo(
                      img: 'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1',
                      name: 'Ahmed',
                      title: 'Engineer',
                      rate: 4.5,
                    ), // نهاية عنصر FreelancerInfo

                    // عنصر ثاني يعرض معلومات مستقل آخر
                    FreelancerInfo(
                      img: 'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                      name: 'Mohamed',
                      title: 'Doctor',
                      rate: 3.5,
                    ),
                    FreelancerInfo(
                      img: 'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1',
                      name: 'Ahmed',
                      title: 'Engineer',
                      rate: 4.5,
                    ), // نهاية عنصر FreelancerInfo
                     FreelancerInfo(
                      img: 'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                      name: 'Mohamed',
                      title: 'Doctor',
                      rate: 3.5,
                    ),
                    FreelancerInfo(
                      img: 'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1',
                      name: 'Ahmed',
                      title: 'Engineer',
                      rate: 4.5,
                    ),
                     FreelancerInfo(
                      img: 'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                      name: 'Mohamed',
                      title: 'Doctor',
                      rate: 3.5,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              //   Image.asset('offer.png', fit: BoxFit.fitWidth)
              SectionWidget(sectionTitle: 'Top Services'),
            ],
          ),
        ),
      ),
    ),
  );
}
      //         Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,

      //           children: [
      //             Container(
      //               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      //               decoration: BoxDecoration(
      //                 gradient: LinearGradient(
      //   end: Alignment.centerRight,
      //   begin: Alignment.centerLeft,
      //   colors: [Color(0xffC2D7F2), Colors.white],
      // ),
      //                 borderRadius: BorderRadius.circular(8),
      //               ),
      //               child: Text(
      //                 'Top Services',
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.w600,
      //                 ),
      //               ),
      //             ),
      //         TextButton(
      //               onPressed: () {},
      //               child: Text(
      //                 'View All',
      //                 style: TextStyle(decoration: TextDecoration.underline),
      //               ),
      //         ),   ],
      //         ),
                
//               Row(                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

//                 children: [
// Container(
   

//                     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//         end: Alignment.centerRight,
//         begin: Alignment.centerLeft,
//         colors: [Color(0xffC2D7F2), Colors.white],
//       ),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Text(
//                       'Top Services',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
// TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'View All',
//                       style: TextStyle(decoration: TextDecoration.underline),
//                     ),
//               ), 
//                 ],
//               )
          
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:my_flutter_app/widgets/section_widget.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.menu),
//         title: SvgPicture.asset(
//           'assets/images/logo-79.svg',
//           height: 30,
//         ),
//         actions: [
//           SvgPicture.asset(
//             'assets/images/shopping-cart.svg',
//             height: 30,
//           ),
//           SizedBox(width: 20),
//           SvgPicture.asset(
//             'assets/images/notification-bing.svg',
//             height: 30,
//           ),
//           SizedBox(width: 20),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               // Search Row
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         hintText: 'Search',
//                         prefixIcon: Icon(Icons.search),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Icon(Icons.sort),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
              
//               // Image Banner
//               Container(
//                 width: double.infinity,
//                 height: 100,
//                 child: Image.asset(
//                   'assets/images/Group1.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(height: 20),
              
//               // Sections
//               SectionWidget(sectionTitle: 'Top Services'),
//               SizedBox(height: 20),
//               SectionWidget(sectionTitle: 'Top Rated Freelancers'),
//               SizedBox(height: 20),
              
//               // Add more content here
//               Container(
//                 height: 200,
//                 color: Colors.grey[200],
//                 child: Center(
//                   child: Text('More Content Here'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
 }
 
// دالة لعرض SnackBar برسالة "Hello"
void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Hello')),
  );
}
