import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/figmaa.dart';
// ويدجت مخصصة لعرض عنوان قسم مع خلفية متدرجة
class SectionWidget extends StatelessWidget {
  const SectionWidget({super.key, required this.sectionTitle});

  final String sectionTitle; // عنوان القسم الذي سيتم عرضه

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
              colors: [Color(0xffC2D7F2), Colors.white],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            sectionTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
  onPressed: () {
            showSnackBar(context); // عرض رسالة مؤقتة فوق الشاشة عند الضغط علىView All و هيي "Hello"موجودة الfun عند figmaa.dart
          },          child: Text(
            'View All',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
