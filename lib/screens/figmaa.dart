import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/widgets/section_widget.dart';
import 'package:my_flutter_app/widgets/freelancer_info.dart';
import 'package:my_flutter_app/widgets/service_info.dart';
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
              SizedBox(height: 20),
              
              // عنصر خدمة يحتوي على صورة من الإنترنت
              ServiceInfo(
                serviceImg: 'data:image/jpeg;base64,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',
              ),

              ServiceInfo(
                serviceImg: 'data:image/jpeg;base64,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',
              ),

              ServiceInfo(
                serviceImg: 'data:image/jpeg;base64,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',
              ),

              ServiceInfo(
                serviceImg: 'data:image/jpeg;base64,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',
              ),

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
