import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/rating.dart';
class FreelancerInfo extends StatelessWidget {
  final String img;
  final String name;
  final String title;
  final double rate;

  const FreelancerInfo({super.key, 
    required this.img,
    required this.name,
    required this.title,
    required this.rate,
  });
// - super.key يضيف دعم للمفاتيح (keys) اللي Flutter يستخدمها لتمييز الـ widgets.
// - const يخلي Flutter يعيد استخدام نفس الـ widget بدل ما يبنيه من جديد كل مرة → أداء أفضل.
// - كل الخصائص عندك final، وهذا يطابق قاعدة الـ @immutable.
// - كلمة immutable معناها "غير قابل للتغيير".
// - في Flutter، أي كلاس موسوم بـ @immutable لازم تكون كل خصائصه (fields) نهائية = final.
// - يعني: لما تنشئي الـ widget، القيم اللي تعطيها له ما بتتغير بعد الإنشاء.

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
//           CircleAvatar(
//   backgroundImage: const AssetImage('assets/images/Groub1.png'),
//   radius: 25,
// ),
// - CircleAvatar ودجت جاهزة في Flutter لعرض صورة دائرية.
// - backgroundImage خاصية بتحدد صورة الخلفية للـ CircleAvatar.
//  بيحط الصورة داخل الـ CircleAvatar كـ child.
// - يعني الصورة بتكون داخل الدائرة، لكن ممكن ما تكون دائريّة تمامًا لو ما ضبطتي الحجم أو الشكل.
// - ما بيقص الصورة تلقائيًا لتناسب شكل الدائرة.
// CircleAvatar(
//   child: Image.network(''),
// )
          CircleAvatar(backgroundImage: NetworkImage(img), radius: 25),
          SizedBox(height: 3),
          Text(name),
          SizedBox(height: 3),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 3),
          Rating(rate: rate)
        ],
      ), // Column
    ); // Padding
  }
}