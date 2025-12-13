import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Color(0xff827BEB).withAlpha(25),
        borderRadius: BorderRadius.circular(40),
      ), // BoxDecoration
      child: Row(
        children: [
          Icon(Icons.star_rounded, color: Color(0xff827BEB)),
          Text(
            rate.toStringAsFixed(1),
            style: TextStyle(fontWeight: FontWeight.bold),
          ), // Text
        ],
      ),
    );
  }
}