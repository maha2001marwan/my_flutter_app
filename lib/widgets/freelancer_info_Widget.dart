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
import 'package:my_flutter_app/widgets/rating.dart';
import 'package:my_flutter_app/data/freelancer_model.dart';

class FreelancerInfoWidget extends StatelessWidget {
  final FreelancerModel model;
  
  const FreelancerInfoWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 100, // تحديد عرض ثابت للعنصر
        child: Stack(
          children: [
            // الصورة الدائرية في الخلفية
            CircleAvatar(
              backgroundImage: NetworkImage(model.img),
              radius: 50,
            ),
            
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
  child: Rating(rate: model.rate),
)
                     ,width: 70,height: 40,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}