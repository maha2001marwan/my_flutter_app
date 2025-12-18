import 'package:my_flutter_app/data/rating_model.dart';

class FreelancerModel {
 final String img;

 final String name;

 final String title; 
  final RatingModel rating;

 FreelancerModel({required this.img, required this.name, required this.title, required this.rating});
}
// - كلاس Model (للتعامل مع البيانات من API)
// - كلاس Widget (لعرض البيانات على الشاشة)
