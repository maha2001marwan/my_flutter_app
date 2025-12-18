import 'rating_model.dart';
class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;
  final double price;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: RatingModel.fromJson(json['rating']),
      price: json['price'] * 1.0,// تحويل السعر إلى double حتى لو كان int من السيرفر
    );
  }
}