import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/rating_model.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.ratingModel});
  final  RatingModel ratingModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Color(0xff827BEB).withAlpha(25),
        borderRadius: BorderRadius.circular(40),
      ), // BoxDecoration
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star_rounded, color: Color(0xff827BEB)),
          Text(
            ratingModel.rate.toStringAsFixed(1),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox( width: 5),
           Text(
           '(${ratingModel.count})' ,
            style: TextStyle(fontWeight: FontWeight.w300,
            fontSize: 10),
          ), // Text
        ],
      ),
    );
  }
}