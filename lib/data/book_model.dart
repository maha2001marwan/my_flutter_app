

class Book {
  final String title;
  final String releaseDate;
  final String description;
  final int pages;
  final String cover;

  Book({
    required this.title,
    required this.releaseDate,
    required this.description,
    required this.pages,
    required this.cover,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      releaseDate: json['releaseDate'],
      description: json['description'],
      pages: json['pages'],
      cover: json['cover'],
    );
  }
}