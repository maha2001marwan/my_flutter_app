import 'dart:math';

void main(){
  print('start');

  var x = 1 + 1;

  print('output = $x');

  complexOperation(); // async

  print('end');
}

complexOperation(){
  Future.delayed(Duration(seconds: 2), (){
    print('complex operation ended');
  });
}

// start
// output = 2
// end
// complex operation ended









void main1()  {
  print('start');

  var x = 1 + 1;

  print('output = $x');

   complexOperation1(); // ننتظر النتيجة// async - network - database - permissions



  print('end');
}


Future<void> complexOperation1() 
//  async
  {  return Future.delayed(Duration(seconds: 2), () => 'Ahmed');

  // var result =  Future.delayed(Duration(seconds: 2), () {
   //  Future<String> result = Future.delayed(Duration(seconds: 2), (){

  //   return 'Ahmed';
  // });

  // print(result); // الآن تطبع "Ahmed" بعد التأخير
}
// start
// output = 2
// Instance of '_Future<String>'
// end
//ليش طلع Instance of '_Future<String>'؟
  /// Print start message
// لأنك طبعتي كائن الـ Future نفسه بدون ما تنتظري النتيجة. Dart ما نفذ الكود داخل Future.delayed بعد، فطبع نوع الكائن بدل القيمة.
// لحل المشكلة، لازم تستخدم await عشان تنتظر النتيجة قبل ما تطبعها. زي كذا:








void main2()  {
  /// Print start message and calculate output
  print('start');

  /// Calculate output
  var x = 1 + 1;

  /// Print output
  print('output = $x');

   complexOperation2(); // ننتظر النتيجة// async - network - database - permissions

  /// Print end message


  print('end');

}
complexOperation2() async {
  // Future (uncompleted)
  Future<String> resultFuture = Future.delayed(Duration(seconds: 2), () {
    return 'Ahmed';
  });

  // await for a future until it is ready
  String resultText = await resultFuture;

  print(resultText);
}
//start
// output = 2
// end
// Ahmed
// - الكود بيطبع end قبل ما تطلع نتيجة Ahmed لأن complexOperation() غير منتظرة.
// - لو بدك تنتظري النتيجة قبل طباعة end، لازم تعملي await داخل main() وتخليها async:








void main3() async {
  print('start');

  var x = 1 + 1;

  print('output = $x');

  await complexOperation3(); // ننتظر النتيجة

  print('end');
}
complexOperation3() async {
  // Future (uncompleted)
  Future<String> resultFuture = Future.delayed(Duration(seconds: 2), () {
    return 'Ahmed';
  });

  // await for a future until it is ready
  String resultText = await resultFuture;

  print(resultText);
}
//start
// output = 2
// Ahmed
// end






void main4() {
  print('start');

  var x = 1 + 1;

  print('output = $x');

   complexOperation4(); // ننتظر النتيجة
  print('end');

}

complexOperation4() async {
  // Future (uncompleted - completed with data - completed with error)
  Future<String> resultFuture = Future.delayed(Duration(seconds: 2), () {
    throw ('Error');
    // return 'Ahmed'; // Dead code. Try removing the code, or fixing the code before it so that it can be reached.
  }); // Future.delayed

  // await for a future until it is ready
  String resultText = await resultFuture;
}

//الناتج 
// start

// output = 2

// end

// Unhandled exception:
// Error 





void main5() {
   print('start');

  var x = 1 + 1;

  print('output = $x');

  complexOperation5();
  print('end');
}

complexOperation5() async {
  // Future (uncompleted - completed with data - completed with error)
  Future<String> resultFuture = Future.delayed(Duration(seconds: 2), () {
    try {
      throw ('Error');
      // return 'Ahmed'; // كود ميت (Dead code)
    } catch (e) {
      print('Error happened');
      return 'Default Value'; // لازم ترجع قيمة بديلة

    }
  });

  // ننتظر النتيجة
  String resultText = await resultFuture;

  print(resultText);
}
// الناتج
// start
// output = 2
// end
// Error happened كنص مش Unhandled exception




void main6() {
  print('start');

  var x = 1 + 1;

  print('output = $x');

  complexOperation6();
  print('end');
}
// الحالة الأولى (إذا كانت true):
// start
// output = 2
// end
// Error happened


// الحالة الثانية (إذا كانت false):
// start
// output = 2
// end
// Ahmed
complexOperation6() async {
  // Future (uncompleted - completed with data - completed with error)
  try {
    Future<String> resultFuture = Future.delayed(Duration(seconds: 2), () {
      Random().nextBool() ? throw Exception() : null;
      return 'Ahmed';
    });

    // await for a future until it is ready
    String resultText = await resultFuture;

    print(resultText);
  } catch (e) {
    print('Error happened');
  }
}
// الحالة الأولى (إذا كانت true):
// Error happened


// الحالة الثانية (إذا كانت false):
// Ahmed


//  لذلك الناتج الوحيد هو إما Ahmed أو Error happened حسب العشوائية.




void main7() {
  print('start');

  var x = 1 + 1;

  print('output = $x');

  complexOperation7(); // ننتظر النتيجة
  print('end');
}


complexOperation7() async {
  // Future (uncompleted - completed with data - completed with error)
  Future<String> resultFuture = Future.delayed(Duration(seconds: 2), () {
    Random().nextBool() ? throw Exception() : null;
    return 'Ahmed';
  });

  // await for a future until it is ready
  // String resultText = await resultFuture;

  resultFuture.then((value) { // عند النجاحtry
    print('then $value');
  }).onError((e, s) {// عند الخطأcatch
    print('onError $e');
  });
}

// فالناتج سيكون واحد من حالتين (بعد 2 ثانية):
// الحالة الأولى (إذا كانت true):
// start
// output = 2
// end
// onError Exception


// الحالة الثانية (إذا كانت false):
// start
// output = 2
// end
// then Ahmed

// الترتيب: end يظهر أولًا لأن complexOperation() غير منتظرة (await غير موجود)، ثم بعد التأخير يظهر الناتج حسب العشوائية.


 // MaterialApp
  // Scaffold - Center - Text

  // Built-in widgets
  // MatrialApp - Scaffold - Center - Text
  // AppBar - Icon - Column - Row - Container
  // Images (Network - Assets)

  // https://www.linkedin.com/in/ahmedfathyalex/edit/forms/certification/new/?profileFormEntryPoint=PROFILE_COMPLETION_HUB
  // https://www.news.com/news/sports?type=football
  // https://www.google.com/search?q=american+football+games&sca_esv=45bbfca07b6f5476&sxrf=AE3tif05USsBFxu02DWhij6WLu18sozYNA%3A175648
  // Endpoint [baseurl / path ? queries]
