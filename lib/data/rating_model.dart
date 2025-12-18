class RatingModel {
  final double rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'],
    );
  }
}

// بعد ما تجيب البيانات من API
// RatingModel rating = RatingModel.fromJson(json['rating']);

// لعرضها في الواجهة
// RatingWidget(rate: rating.rate, count: rating.count);

// - RatingModel: بيخزن البيانات اللي جايه من السيرفر (rate, count).
// - RatingWidget: بياخد القيم ويعرضها بشكل بصري على الشاشة.
