// استيراد مكتبة Flutter الأساسية الخاصة بالتصميم والواجهات
import 'package:flutter/material.dart';

// تعريف كلاس جديد باسم MainApp وهو من نوع StatelessWidget (واجهة لا تتغير)
class MainApp extends StatelessWidget {
  // مُنشئ الكلاس، يستخدم المفتاح الأساسي (key) لتحديد هوية الواجهة
  const MainApp({super.key});

  // دالة البناء التي ترجع واجهة التطبيق
  @override
  Widget build(BuildContext context) {
    // ترجع تطبيق من نوع MaterialApp يحتوي على واجهة رئيسية
    return 
    //const 
    MaterialApp(
      // الواجهة الرئيسية هي Scaffold تحتوي على جسم (body)
      debugShowCheckedModeBanner: false, // هاد لإزالة الشعار التجريبي من التطبيق الاحمر تبع الديبغ
       

      home: Scaffold(
        // الجسم يحتوي على عنصر Center لتمركز المحتوى في المنتصف
      appBar: AppBar( // شريط التطبيق العلوي
        title: Text('ID Card'), // عنوان يظهر في منتصف الـ AppBar
        backgroundColor: const Color.fromARGB(255, 66, 206, 159), // لون خلفية الـ AppBar كهرماني
        centerTitle: true, // عنوان يظهر في منتصف الـ AppBar,
        // leading: Text('leading'),
        //leading: Icon(Icons.arrow_back), // أيقونة في بداية الـ AppBar (عادةً زر الرجوع)
      
              leading: const Icon(Icons.arrow_back_ios), // أيقونة الرجوع في بداية الـ AppBar
        actions: const [// أيقونات إضافية في نهاية الـ AppBar
          Icon(Icons.settings), // أيقونة الإعدادات
          Icon(Icons.shopping_cart), // أيقونة السلة
          Icon(Icons.home), // أيقونة الصفحة الرئيسية
        ],

      
      
      
      ), // نهاية AppBar
     
       
          // داخل Center يوجد عنصر Text يعرض "Hello World!"
         //  body: Center( // عنصر يوسّط المحتوى داخل الصفحة
  body:Column(
    children: [
      Row(
      // Column( // عنصر عمودي لترتيب العناصر رأسياً
        // mainAxisAlignment: MainAxisAlignment.center, // يوسّط العناصر رأسياً داخل العمود
        //  mainAxisAlignment: MainAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
        children: 
        //const عملت ارر مع اللون blue.shade300
         [ // قائمة العناصر داخل العمود
          Text( // عنصر النص المعروض
            'Hello World with Flutter!',
            style: TextStyle( // تنسيق النص
              fontSize: 40, // حجم الخط
               // color: Colors.blueAccent, 
      
               // اللون يلي تحت عمل ارر لانه كان فيه const عند 
      //            - لكن Colors.blue.shade300 مش ثابتة وقت الترجمة، لأنها ترجع قيمة محسوبة من كائن MaterialColor.
      // - لذلك المترجم بيقول: "ما بقدر أستخدم shade300 داخل تعبير ثابت".
              color: Colors.blue.shade300, // لون النص أزرق واضح
              fontWeight: FontWeight.bold, // وزن الخط عريض (Bold)
              // يمكنك تجربة ألوان أخرى مثل:
              // color: Colors.red.shade800,
              // color: Colors.black12,
              // fontWeight: FontWeight.w900,
            ),
          ),
                Text( // عنصر النص الثاني
                  'Flutter', // النص المعروض
                  style: TextStyle(
                    fontSize: 40,
                    color: const Color.fromARGB(255, 199, 115, 154),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text( // عنصر النص الثالث
                  'Hello Flutter!', // النص المعروض
                  style: TextStyle(
                    fontSize: 40,
                    color: const Color.fromARGB(255, 168, 63, 63),
                    fontWeight: FontWeight.bold,
                  ),  ),
      
        ],
      ), SizedBox(height: 3),
      Column( // عنصر عمودي لترتيب العناصر رأسياً
            mainAxisAlignment: MainAxisAlignment.center, // يوسّط العناصر رأسياً داخل العمود
            children: [
              const Text( // عنصر النص المعروض
                'Eng. Maha Abu Khater', // النص المعروض
                style: TextStyle( // تنسيق النص
                  fontSize: 24, // حجم الخط
                  color: Color.fromARGB(255, 243, 33, 149), // لون النص أزرق
                  fontWeight: FontWeight.bold, // وزن الخط عريض (Bold)
                ),
              ),
               SizedBox(height: 5), // مسافة بين النص والأيقونات
              Row( // عنصر أفقي لترتيب الأيقونات جنباً إلى جنب
               
                mainAxisAlignment: MainAxisAlignment.center, // يوسّط الأيقونات أفقياً
                children: const [ // قائمة الأيقونات
                  Icon(Icons.email, color: Color.fromARGB(255, 212, 119, 150)), // أيقونة البريد الإلكتروني
                  SizedBox(width: 50), // مسافة بين الأيقونات بالعرض
                  Icon(Icons.message, color: Color.fromARGB(255, 223, 144, 170)), // أيقونة الرسائل
                  SizedBox(width: 50),
                  Icon(Icons.call, color: Color.fromARGB(255, 172, 122, 138)), // أيقونة الاتصال
                ],
              ),
            ],),
      SizedBox(height: 5), // مسافة بين القسم العلوي والقسم السفلي
    Column(
        children: [
          // ✅ حاوية مزينة تحتوي على النص والأيقونات
          Container(
            alignment: Alignment.topLeft, // توسيط المحتوى داخل الحاوية
            padding: EdgeInsets.all(20), // مسافة داخلية
            margin: EdgeInsets.only(top: 40), // مسافة خارجيية
             height:80,
          width: 300,

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 152, 247, 226), // لون الخلفية
              borderRadius: BorderRadius.circular(20), // زوايا دائرية
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center, // توسيط المحتوى عموديًا
              children: [
                // ✅ نص في وسط الحاوية
                // Center(
                //   child: Text(
                //     'I am a Flutter Developer', // النص المعروض
                //     style: TextStyle(fontSize: 20, color: Colors.black54),
                //   ),
                // ),
                // SizedBox(height: 20), // مسافة بين النص والأيقونات

                // ✅ صف يحتوي على أيقونات التواصل
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, // توزيع متساوي
                //   children: [
                    Icon(Icons.message, size: 30, color: Colors.blue), // أيقونة الرسائل
                    // Icon(Icons.call, size: 30, color: Colors.green), // أيقونة الاتصال
                    // Icon(Icons.email, size: 30, color: Colors.red), // أيقونة البريد
                //   ],
                // ),
             
            
             
             
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.blue, // خلفية زرقاء
               // border: Border.all(color: Colors.red, width: 10), // حدود حمراء
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // ),
               borderRadius: BorderRadius.circular(20),
                  
                ),
              
              margin: EdgeInsets.symmetric(vertical: 10),
                            // margin: EdgeInsets.only(top: 10, bottom: 10),

              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              // child: Image.network( 
              //   'data:image/jpeg;base64,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',
                child: Image.asset( 
'assets/images/ta.jpeg', fit: BoxFit.cover,
                ),
                          // fit: BoxFit.fill,

              ),
       Container(
              decoration: BoxDecoration(
                color: Colors.blue, // خلفية زرقاء
                borderRadius: BorderRadius.circular(20), // زوايا دائرية
              ),
              //margin: EdgeInsets.only(bottom: 10, top: 10), // هوامش خارجية
              padding: EdgeInsets.all(10), // هوامش داخلية
              height: 100,
              width: 100,

              // ✅ عرض صورة من ملف assets
              child : Image.asset(
                'assets/images/m1.jpeg',
            // Image.network(
            //     'data:image/jpeg;base64,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',
             fit: BoxFit.fill,),
              
              //   fit: BoxFit.fill, // يملأ الحاوية بالكامل
              ),
          //  ),

            // ✅ حاوية مزينة تحتوي على صورة
            Container(
              decoration: BoxDecoration(
                color: Colors.blue, // خلفية زرقاء
            //    border: Border.all(color: Colors.red, width: 10), // إطار أحمر بعرض 10
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), // زاوية علوية يسار دائرية
                  bottomRight: Radius.circular(15), // زاوية سفلية يمين دائرية
                ),image: DecorationImage(
                         image: NetworkImage( "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIEqjCMnOYbVm3D6d1-y4Txt2rgo_5s2KPHzf0cO6Gh6dMqGNaQOmGOMed2N9HOxtF-64n0TsjD57BUT-gIKtMDvWbFZfBHqM_I089ahjS2A&s=10" ),
                       fit: BoxFit.fill,  )
                         )
              ,
              alignment: Alignment.center, // توسيط المحتوى داخل الحاوية
             margin: EdgeInsets.only(bottom: 10, top: 10), // هوامش خارجية
            //  padding: EdgeInsets.all(10), // هوامش داخلية
              height: 50,
              width: 50,

              // ✅ عرض صورة من الإنترنت
              // child:Image.asset( 'assets/see.jpg', fit:BoxFit.fill),
              //child : Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIEqjCMnOYbVm3D6d1-y4Txt2rgo_5s2KPHzf0cO6Gh6dMqGNaQOmGOMed2N9HOxtF-64n0TsjD57BUT-gIKtMDvWbFZfBHqM_I089ahjS2A&s=10",fit: BoxFit.fill,
            
          //  ),
     ) 
       ],
),
    ],
  ),
),
    //  ), لما حذفت الcenter  حذفت قوسها المسكر
    ); // نهاية عنصر MaterialApp
  }
}

// import 'package:flutter/material.dart'; // استيراد مكتبة واجهات فلاتر الأساسية

// class MainApp extends StatefulWidget { // تحويل الكلاس إلى StatefulWidget لأنه يحتاج إلى حالة (TabController)
//   const MainApp({super.key}); // مُنشئ ثابت للكلاس

//   @override
//   State<MainApp> createState() => _MainAppState(); // إنشاء الحالة المرتبطة بالكلاس
// }

// class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  // استخدام mixin لتوفير vsync المطلوب لـ TabController

//   late TabController controller; // تعريف متغير للتحكم في التبويبات

//   @override
//   void initState() {
//     super.initState();
//     controller = TabController(length: 3, vsync: this); // تهيئة TabController بثلاث تبويبات
//   }

//   @override
//   void dispose() {
//     controller.dispose(); // التخلص من TabController عند إغلاق الصفحة لتوفير الموارد
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( // هيكل الصفحة الرئيسي
//       appBar: AppBar( // شريط التطبيق العلوي
//         title: const Text('My First App'), // عنوان التطبيق
//         backgroundColor: Colors.amber, // لون خلفية الـ AppBar
//         leading: const Icon(Icons.arrow_back_ios), // أيقونة الرجوع في بداية الـ AppBar
//         actions: const [ // أيقونات إضافية في نهاية الـ AppBar
//           Icon(Icons.settings),
//           Icon(Icons.shopping_cart),
//           Icon(Icons.home),
//         ],
//         bottom: TabBar( // شريط التبويبات أسفل الـ AppBar
//           controller: controller, // ربط TabBar بالـ TabController
//           tabs: const [ // تعريف التبويبات الثلاثة
//             Tab(text: 'Tab 1'),
//             Tab(text: 'Tab 2'),
//             Tab(text: 'Tab 3'),
//           ],
//         ),
//       ),
//       body: TabBarView( // محتوى كل تبويب
//         controller: controller, // ربط TabBarView بنفس الـ controller
//         children: const [ // محتوى كل تبويب
//           Center(child: Text('Content of Tab 1')),
//           Center(child: Text('Content of Tab 2')),
//           Center(child: Text('Content of Tab 3')),
//         ],
//       ),
//     );
//   }
// }