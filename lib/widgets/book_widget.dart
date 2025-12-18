
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:my_flutter_app/details_pages.dart/book_details_widget.dart';
import 'package:my_flutter_app/data/book_model.dart';

// - لأن البيانات اللي جايه من الـ API بتتغير مع الوقت (dynamic).
// - لازم نعمل إعادة بناء للشاشة (rebuild) لما نوصل بيانات جديدة من السيرفر.
// - StatefulWidget بيعطينا إمكانية استخدام setState()، واللي بتخلي الواجهة تتحدث تلقائيًا لما تتغير البيانات.
// - لو استخدمنا StatelessWidget، الشاشة رح تظل ثابتة 
//   حتى لو جت بيانات جديدة من السيرفر، وما رح تتحدث الواجهة إلا لما نعيد تشغيل التطبيق.


class BookListWidget extends StatefulWidget {
  @override
  _BookListWidgetState createState() => _BookListWidgetState();
}

class _BookListWidgetState extends State<BookListWidget> {
  // 📦 موديل البيانات
  List<Book> books = [];

  Future<void> fetchBooks() async {
    final response = await http.get(
      Uri.parse('https://potterapi-fedeperin.vercel.app/en/books'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      setState(() {
        books = jsonData.map((json) => Book.fromJson(json)).toList();
    // هنا بمجرد ما نوصل البيانات من الـ API، بنخزنها في المتغير book ونعمل تحديث للشاشة.

      });
    } else {
      print('Failed to load books');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchBooks(); // تحميل الكتب عند تشغيل الودجت
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Harry Potter Books')),
      body: books.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                  leading: Image.network(book.cover, width: 50),
                  title: Text(book.title),
                  subtitle: Text('Released: ${book.releaseDate}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BookDetailsWidget(book: book),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// // 📦 موديل البيانات
// class Book {
//   final String title;
//   final String releaseDate;
//   final String description;
//   final int pages;
//   final String cover;

//   Book({
//     required this.title,
//     required this.releaseDate,
//     required this.description,
//     required this.pages,
//     required this.cover,
//   });

//   factory Book.fromJson(Map<String, dynamic> json) {
//     return Book(
//       title: json['title'],
//       releaseDate: json['releaseDate'],
//       description: json['description'],
//       pages: json['pages'],
//       cover: json['cover'],
//     );
//   }
// }

// // 🧩 الودجت الرئيسي
// class BookWidget extends StatefulWidget {
//   @override
//   _BookWidgetState createState() => _BookWidgetState();
// }

// class _BookWidgetState extends State<BookWidget> {
//   Book? book;

//   // 🛠️ دالة جلب البيانات من API
//   Future<void> fetchBook() async {
//     final url = Uri.parse('https://potterapi-fedeperin.vercel.app/en/books/1');
//     final response = await http.get(url);

//     print('Response status: ${response.statusCode}'); // ✅ فحص حالة الاستجابة

//     if (response.statusCode == 200) {
//       final jsonData = jsonDecode(response.body);
//       setState(() {
//         book = Book.fromJson(jsonData);
//       });
//     } else {
//       print('Failed to load book');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchBook(); // 🚀 استدعاء الدالة عند تشغيل الودجت
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Harry Potter Book')),
//       body: book == null
//           ? Center(child: CircularProgressIndicator()) // ⏳ تحميل البيانات
//           : Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Image.network(book!.cover), // 🖼️ عرض صورة الغلاف
//                   SizedBox(height: 16),
//                   Text(book!.title,
//                       style: TextStyle(
//                           fontSize: 22, fontWeight: FontWeight.bold)), // 📘 العنوان
//                   SizedBox(height: 8),
//                   Text('Released: ${book!.releaseDate}'), // 📅 تاريخ الإصدار
//                   SizedBox(height: 8),
//                   Text('Pages: ${book!.pages}'), // 📄 عدد الصفحات
//                   SizedBox(height: 16),
//                   Text(book!.description), // 📖 الوصف
//                 ],
//               ),
//             ),
//     );
//   }
// }

//   // دالة جلب البيانات من API
//   Future<void> fetchData() async {
//     try {
//       var url = Uri.parse('https://fakestoreapi.com/products');
//       //- هذا يحوّل النص إلى كائن Uri يحتوي على أجزاء الرابط (المضيف، المسار، الاستعلام...).

//       var response = await http.get(url);

//       print('Response status: ${response.statusCode}');
//       //هو بيساعدك تعرف إذا كان الطلب نجح أو فشل:
// // - 200 يعني نجاح
// // - 404 يعني الصفحة غير موجودة
// // - 500 يعني خطأ في السيرفر

//       print('Response body: ${response.body}');
//     } catch (e) {
//       print('حدث خطأ أثناء جلب البيانات: $e');
//     }
//   }
