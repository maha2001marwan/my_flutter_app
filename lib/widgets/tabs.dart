import 'package:flutter/material.dart';

class MainApp1 extends StatelessWidget {
  const MainApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // عدد التبويبات
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"), // عنوان التطبيق
          backgroundColor: Colors.amber, // لون شريط التطبيق
          centerTitle: true, // توسيط العنوان
          leading: const Icon(Icons.arrow_back_ios), // أيقونة الرجوع
          actions: const [ // أيقونات على يمين الشريط
            Icon(Icons.settings),
            Icon(Icons.shopping_cart),
            Icon(Icons.home),
          ],
          bottom: const TabBar( // شريط التبويبات
            tabs: [
              Tab(text: "صور"), // التبويب الأول
              Tab(text: "نصوص"), // التبويب الثاني
              Tab(text: "أزرار"), // التبويب الثالث
            ],
          ),
        ),
        body: 
       // const
         //عاملة ارر للصورة من النت
         TabBarView( // محتوى كل تبويب
          children: [
            // ✅ التبويب الأول: عرض صور
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("صور جميلة", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 20),
                  Image.network("https://picsum.photos/200"), // صورة من الإنترنت
                ],
              ),
            ),

            // ✅ التبويب الثاني: عرض نصوص
            Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "هذا نص عربي داخل التبويب الثاني.\nيمكنك تعديل المحتوى كما تشاء.",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // ✅ التبويب الثالث: عرض أزرار
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // عند الضغط على الزر
                     // print("تم الضغط على الزر الأول");
                    },
                    child: Text("زر 1"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                    //  print("تم الضغط على الزر الثاني");
                    },
                    child: Text("زر 2"),
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