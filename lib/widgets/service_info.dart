import 'package:flutter/material.dart'; // استيراد مكتبة الواجهات من Flutter

class ServiceInfo extends StatelessWidget {
  // تعريف ودجت ثابتة لعرض معلومات خدمة
  final String serviceImg; // مسار/رابط صورة الخدمة

  const ServiceInfo({
    super.key, // مفتاح اختياري للودجت
    required this.serviceImg, // تمرير رابط الصورة إجباري عبر المُنشئ
  });

  @override // توضيح أننا نُعيد تعريف دالة build من StatelessWidget
  Widget build(BuildContext context) {
    // دالة البناء التي تُنشئ واجهة المستخدم
    return Padding(
      // إضافة هوامش خارجية حول المحتوى
      padding: const EdgeInsets.all(8.0), // هوامش بمقدار 8 من كل جهة
      child: Align(
        // محاذاة المحتوى داخل الودجت
        alignment: Alignment.centerLeft, // محاذاة إلى يسار الشاشة
        // SizedBox( // عنصر يحدد المساحة التي سيشغلها المحتوى
        //   width: 216, // العرض الكلي
        //   height: 154, // الارتفاع الكلي
        child: Stack(
          // استخدام Stack لتراكب العناصر فوق بعضها
          clipBehavior:
              Clip.none, // السماح لعناصر Positioned بالخروج خارج الحدود
          children: [
            // قائمة العناصر داخل الـ Stack
            Container(
              // الحاوية الأساسية لعرض الصورة
              width: 197, // عرض الحاوية
              height: 154, // ارتفاع الحاوية
              decoration: BoxDecoration(
                // تزيين الحاوية
                image: DecorationImage(
                  // تعيين خلفية بصورة
                  image: NetworkImage(
                    serviceImg,
                  ), // تحميل الصورة من خلال رابط الشبكة
                  fit: BoxFit.cover, // تغطية كامل مساحة الحاوية بالصورة
                ),
            //      image: DecorationImage( // تعيين صورة كخلفية
            //   image: AssetImage('assets/images/m1.jpeg'), // تحميل الصورة من ملف محلي داخل مجلد assets
            //   fit: BoxFit.cover, // جعل الصورة تغطي كامل الحاوية
            // ), // نهاية DecorationImage

                borderRadius: BorderRadius.circular(20), // زوايا دائرية للحاوية
              ),
            ),
            Positioned(
              // عنصر لوضع حاوية أخرى بمكان محدد داخل الـ Stack
              right:
                  -160, // إزاحة نحو اليمين بقيمة سلبية (يجعلها خارج الإطار جزئيًا)
              top: 16, // مسافة من الأعلى لتحديد الموضع عموديًا
              child: Container(
                // الحاوية المتموضعة فوق الصورة
                width: 216, // عرض الحاوية الثانية
                height: 123, // ارتفاع الحاوية الثانية
                decoration: BoxDecoration(
                  // تزيين الحاوية الثانية
                  color: Colors.red, // لون خلفية أحمر
                  borderRadius: BorderRadius.circular(20), // زوايا دائرية
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
