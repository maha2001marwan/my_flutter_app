// import 'package:flutter/material.dart';
// import 'package:my_flutter_app/widgets/rating.dart';
// import 'package:my_flutter_app/data/freelancer_model.dart';
// class FreelancerInfoWidget extends StatelessWidget {
// final FreelancerModel model;
//   // final String img;
//   // final String name;
//   // final String title;
//   // final double rate;

//   const FreelancerInfoWidget({super.key, 
//    required this.model
//     // required this.img,
//     // required this.name,
//     // required this.title,
//     // required this.rate,
//   });
// // - super.key يضيف دعم للمفاتيح (keys) اللي Flutter يستخدمها لتمييز الـ widgets.
// // - const يخلي Flutter يعيد استخدام نفس الـ widget بدل ما يبنيه من جديد كل مرة → أداء أفضل.
// // - كل الخصائص عندك final، وهذا يطابق قاعدة الـ @immutable.
// // - كلمة immutable معناها "غير قابل للتغيير".
// // - في Flutter، أي كلاس موسوم بـ @immutable لازم تكون كل خصائصه (fields) نهائية = final.
// // - يعني: لما تنشئي الـ widget، القيم اللي تعطيها له ما بتتغير بعد الإنشاء.

//   @override

//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
// //           CircleAvatar(
// //   backgroundImage: const AssetImage('assets/images/Groub1.png'),
// //   radius: 25,
// // ),
// // - CircleAvatar ودجت جاهزة في Flutter لعرض صورة دائرية.
// // - backgroundImage خاصية بتحدد صورة الخلفية للـ CircleAvatar.
// //  بيحط الصورة داخل الـ CircleAvatar كـ child.
// // - يعني الصورة بتكون داخل الدائرة، لكن ممكن ما تكون دائريّة تمامًا لو ما ضبطتي الحجم أو الشكل.
// // - ما بيقص الصورة تلقائيًا لتناسب شكل الدائرة.
// // CircleAvatar(
// //   child: Image.network(''),
// // )
//           CircleAvatar(backgroundImage: NetworkImage(model.img), radius: 25),
//           SizedBox(height: 3),
//           Text(model.name),
//           SizedBox(height: 3),
//           Text(model.title, style: TextStyle(fontWeight: FontWeight.bold)),
//           SizedBox(height: 3),
//           Rating(rate: model.rate)
//         ],
//       ), // Column
//     ); // Padding
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/freelancer_model.dart';
import 'Freelancer_details.dart';

class FreelancerInfoWidget extends StatelessWidget {
  final FreelancerModel model;
  
  const FreelancerInfoWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // عند الضغط على الفريلانسر → يفتح شاشة التفاصيل
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FreelancerDetails(model: model),
          ),
        );
      },
    child : Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 100,
        //تحديد عرض ثابت للعنصر
        child: Stack(
          children: [
            
            // الصورة الدائرية في الخلفية
            CircleAvatar(
              backgroundImage: NetworkImage(model.img),
              radius: 50,
            ),


// Column( 
// mainAxisSize: MainAxisSize.min,
// children: [
//             ClipRect(//بيقص المحتوى بحيث ما يطلع برا الإطار.
//   child: Align(//- بيحط المحتوى في مكان معين داخل المساحة (هنا: أعلى المنتصف topCenter).
//   alignment: Alignment.topCenter,
//   heightFactor: 0.8, // - بيعرض فقط نصف الصورة العلوي.
// // - مفيد لما بدك تعمل preview أو تأثير قص جزئي.
// child: CircleAvatar(
// radius: 48,
// backgroundImage: AssetImage(
// model.img,
// ), // Assetlmage
// ), // CircleAvatar
// )
// ),
// SizedBox(height: 8),

// Text(model.name),
// SizedBox(height: 4),

// Text(model.title, style: TextStyle(fontWeight: FontWeight.bold)),
// SizedBox(height: 4),
// Rating(rate: 4.9,count:100)
// ]),

// - ClipRect ودجت بتقص جزء من الـ widget بناءً على شكل مستطيل.
// - Align ودجت بتحدد كيفية محاذاة الـ child داخل الـ parent.


            // المحتوى النصي فوق الصورة
            Positioned(
              bottom: -10, // التموضع في الأسفل
              left: 4,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                     mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        model.title,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Container(
                       child: Transform.scale(
  scale: 0.8, // نسبة التصغير (80%)
  child: model.rating
  )

                     ,width: 90,height: 40,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}