import 'package:flutter/material.dart'; // استيراد مكتبة الواجهات من Flutter
import 'package:my_flutter_app/data/freelancer_model.dart';

// class ServiceInfo extends StatelessWidget {
//   // تعريف ودجت ثابتة لعرض معلومات خدمة
//   final String serviceImg; // مسار/رابط صورة الخدمة
//   final FreelancerModel model;

//   const ServiceInfo({
//     super.key, // مفتاح اختياري للودجت
//     required this.serviceImg,
//      required this.model, // تمرير رابط الصورة إجباري عبر المُنشئ
//   });

//   @override // توضيح أننا نُعيد تعريف دالة build من StatelessWidget
//   Widget build(BuildContext context) {
//     // دالة البناء التي تُنشئ واجهة المستخدم
//     return Padding(
//       // إضافة هوامش خارجية حول المحتوى
//       padding: const EdgeInsets.all(8.0), // هوامش بمقدار 8 من كل جهة
//       child: Align(
//         // محاذاة المحتوى داخل الودجت
//         alignment: Alignment.centerLeft, // محاذاة إلى يسار الشاشة
//         // SizedBox( // عنصر يحدد المساحة التي سيشغلها المحتوى
//         //   width: 216, // العرض الكلي
//         //   height: 154, // الارتفاع الكلي
//         child: Stack(
//           // استخدام Stack لتراكب العناصر فوق بعضها
//           clipBehavior:
//               Clip.none, // السماح لعناصر Positioned بالخروج خارج الحدود
//           children: [
//             // قائمة العناصر داخل الـ Stack
//             Container(
//               // الحاوية الأساسية لعرض الصورة
//               width: 197, // عرض الحاوية
//               height: 154, // ارتفاع الحاوية
//               decoration: BoxDecoration(
//                 // تزيين الحاوية
//                 image: DecorationImage(
//                   // تعيين خلفية بصورة
//                   image: NetworkImage(
//                     serviceImg,
//                   ), // تحميل الصورة من خلال رابط الشبكة
//                   fit: BoxFit.cover, // تغطية كامل مساحة الحاوية بالصورة
//                 ),
//             //      image: DecorationImage( // تعيين صورة كخلفية
//             //   image: AssetImage('assets/images/m1.jpeg'), // تحميل الصورة من ملف محلي داخل مجلد assets
//             //   fit: BoxFit.cover, // جعل الصورة تغطي كامل الحاوية
//             // ), // نهاية DecorationImage

//                 borderRadius: BorderRadius.circular(20), // زوايا دائرية للحاوية
//               ),
//             ),
//             // Positioned(
//             //   // عنصر لوضع حاوية أخرى بمكان محدد داخل الـ Stack
//             //   right:
//             //       -160, // إزاحة نحو اليمين بقيمة سلبية (يجعلها خارج الإطار جزئيًا)
//             //   top: 16, // مسافة من الأعلى لتحديد الموضع عموديًا
//             //   child: Container(
//             //     // الحاوية المتموضعة فوق الصورة
//             //     width: 216, // عرض الحاوية الثانية
//             //     height: 123, // ارتفاع الحاوية الثانية
//             //     decoration: BoxDecoration(
//             //       // تزيين الحاوية الثانية
//             //       color: Colors.red, // لون خلفية أحمر
//             //       borderRadius: BorderRadius.circular(20), // زوايا دائرية
//             //     ),
//             //   ),
//             // ),
            
//             // محتوى البطاقة فوق الصورة
//             Positioned(
//               right: -160,
//               top: 16,
//               child: Container(
//                 width: 300,
//                 height: 133,
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
//                 ),
//                 child: Row(
//                   children: [ CircleAvatar(
//               backgroundImage: NetworkImage(model.img),
//               radius: 50,
//             ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(model.name,
//                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                         Text(model.title, style: TextStyle(color: Colors.grey)),
//                         SizedBox(height: 4),
//                         Text('This is my amazing work on flutter.',
//                             style: TextStyle(fontSize: 12)),
//                         Spacer(),
//                         Row(
//                                                children: [
//                            Container(
//                            child: Transform.scale(
//                       scale: 0.8, // نسبة التصغير (80%)
//                       child: Rating(rate: model.rate),
//                     )
//                          ,width: 70,height: 40,),
//                             Spacer(),
//                             ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.blue,
//                                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                               ),
//                               child: Text('Book Now', style: TextStyle(fontSize: 12, color: Colors.white)),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }
class ServiceInfo extends StatelessWidget {
  final String serviceImg;
  final FreelancerModel model;

  const ServiceInfo({
    super.key,
    required this.serviceImg,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            
            padding: const EdgeInsets.all(8.0),
            child: Stack(  
              alignment: AlignmentDirectional.topStart,
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                // خلفية الخدمة
                // ClipRRect هو Widget بيقص (clip) المحتوى اللي داخله حسب شكل مستطيل بزوايا مدورة (Rounded Rectangle).
  // child: ClipRRect(
  //         borderRadius: BorderRadius.circular(24),
  //         child: Image.asset(
  //           bkmgPath,
  //           height: 200,
  //           width: 300,

                Container(
                  alignment: Alignment.bottomLeft,
                  width: 300,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(serviceImg),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
          
                // بطاقة المحتوى فوق الصورة
                Positioned(
                   right: -80, // ↪️ الصورة تبدأ من اليمين
                  top: 0,
                  bottom: 0,
                  width: 300,
                 child:  Transform.scale(
                                    //scale: 0.8,
                                     scaleY: 0.9,
                                    child:
                                  
                  Container(
                    padding: EdgeInsets.only(top: 25, left: 12, right: 12, bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
// //                          لون الظل. غالبًا نستخدم Colors.black.withAlpha(20) لظل خفيف وناعم.
//                           color: Colors.black.withOpacity(0.2),
//                           blurRadius: 6,//درجة نعومة الظل. كل ما زاد، صار الظل ناعم أكثر ويعطي إحساس 3D.
//                           spreadRadius: 0,// مدى انتشار الظل. قيمة موجبة توسع الظل، وقيمة سالبة تقلله.
//                           offset: Offset(0, 3),//موقع الظل بالنسبة للعنصر. مثلًا Offset(0, 3) يعني تحت العنصر.

//                         ),
//                       ],
boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      spreadRadius: 1,
      blurRadius: 12,
      offset: Offset(0, 6),
    ),
  ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // صورة الفريلانسر
                        CircleAvatar(
                          backgroundImage: NetworkImage(model.img),
                          radius: 45,
                        ),
                        SizedBox(width: 12),
          
                        // معلومات الفريلانسر
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(model.name,
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold)),
                              Text(model.title,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey)),
                              SizedBox(height: 4),
                              Text(
                                'This is my amazing work on flutter.',
                                style: TextStyle(fontSize: 11),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                //   Transform.scale(
                                //     scale: 0.8,
                                //     child:
                                     model.rating,
                                   //),
                                  
                                  Spacer(),
                                  ElevatedButton(
                                    onPressed: () {},
                                    
                                    // style: ElevatedButton.styleFrom(
                                    //   elevation: 6, // ارتفاع الظل (يعطي إحساس 3D)

                                    //   // backgroundColor: Colors.blue,
                                    //   padding: EdgeInsets.symmetric(
                                    //       horizontal: 12, vertical: 6),
                                    //   shape: RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.circular(12),
                                    //   ),
                                    // ),
                                     style: ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.pressed)) {
        return Colors.deepPurple; // أثناء الضغط
      }
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey; // غير مفعّل
      }
      return const Color(0xFF827BE8); // اللون العادي
    }),
    foregroundColor: WidgetStateProperty.all(Colors.white),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevation: WidgetStateProperty.all(6),
  ),
 

                                    child: Text('Book Now',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white)),
                                  ),
                               //,
                                 ]     ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}