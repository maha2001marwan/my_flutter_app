// import 'package:flutter/material.dart';
// import 'package:my_flutter_app/data/freelancer_model.dart';
// import 'Freelancer_details.dart';
// class FreelancerCard extends StatelessWidget {
//  final FreelancerModel model;

//    FreelancerCard({
//     super.key,
//    required this.model,});

//   @override

//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => FreelancerDetails(
//               model: model,
//             ),
//           ),
//         );
//       },
//       child: Hero(
//         //- لما تضغطي على البطاقة → Flutter يعمل:
// // - ياخذ الصورة من البطاقة.
// // - يطيرها (animate) إلى مكان الصورة في صفحة التفاصيل.
// // - النتيجة: انتقال ناعم وسلس كأنها نفس الصورة تتحرك بين الصفحتين

//         tag: model.img,
//         child: Container(
//           width: 160,
//           margin: const EdgeInsets.symmetric(horizontal: 8),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 8,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Column(
//                 mainAxisSize: MainAxisSize.min, // هذا مهم
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ClipRRect(
//                 borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.network(
//                   model.img,
//                   height: 75,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//                 //NetworkImage(model.img),
//                 // Image.asset(
//                 //   model.img,
//                 //   height: 120,
//                 //   width: double.infinity,
//                 //   fit: BoxFit.cover,
//                 // ),
//               ),
//               const SizedBox(height: 2),
//               Text(model.name, style: const TextStyle(fontWeight: FontWeight.bold)),
//               Text(model.title, style: const TextStyle(color: Colors.grey)),
              
//                  Row(
//                       mainAxisSize: MainAxisSize.min, // هذا مهم
//                   mainAxisAlignment: MainAxisAlignment.center,
//                 children: [  Container(
                 
//                          child: Transform.scale(
//                   scale: .8, // نسبة التصغير (80%)
//                   child: model.rating
//                   )
                
//                        ),
//                   // children: [
//                   //   model.rating,
//                   //   // Text(model.Rating.toString(), style: const TextStyle(color: Colors.grey)),
//                   // ],
//                  ]   ),
              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/freelancer_model.dart';
import 'freelancer_details.dart';

class FreelancerCard extends StatelessWidget {
  final FreelancerModel model;

  const FreelancerCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FreelancerDetails(model: model),
          ),
        );
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// ✅ Hero فقط على الصورة
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Hero(
                tag: model.img,
                child: Image.network(
                  model.img,
                  height: 75,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),


            Text(
              model.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            Text(
              model.title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),


            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: model.rating,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
