import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/book_model.dart';
class BookDetailsWidget extends StatelessWidget {
   const BookDetailsWidget({super.key, 
  required this.book
  });
  final Book book;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
       child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(book.cover),
            SizedBox(height: 16),
            Text('Release Date: ${book.releaseDate}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Pages: ${book.pages}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(book.description),
          ],
         )  ),
      ),
    );
  }
}
