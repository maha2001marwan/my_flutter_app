import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/widgets/section_widget.dart';
import 'package:my_flutter_app/widgets/freelancer_info_Widget.dart';
import 'package:my_flutter_app/widgets/service_info.dart';
import 'package:my_flutter_app/widgets/routes.dart';
import 'package:my_flutter_app/data/freelancer_model.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
    // this.name
  });

  @override
  Widget build(BuildContext context) {
    final String? name = ModalRoute.of(context)!.settings.arguments as String?;
 final List<FreelancerModel> freelancers = [
    FreelancerModel(
                        img:
                            'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1',
                        name: 'Ahmed',
                        title: 'Engineer',
                        rate: 4.5,
                      ), // نهاية عنصر FreelancerInfo
                      // عنصر ثاني يعرض معلومات مستقل آخر
                      FreelancerModel(
                        img:
                            'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                        name: 'Mohamed',
                        title: 'Doctor',
                        rate: 3.5,
                      ),
                      FreelancerModel(
                        img:
                            'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1',
                        name: 'Ahmed',
                        title: 'Engineer',
                        rate: 4.5,
                      ), // نهاية عنصر FreelancerInfo
                      FreelancerModel(
                        img:
                            'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                        name: 'Mohamed',
                        title: 'Doctor',
                        rate: 3.5,
                      ),
                      FreelancerModel(
                        img:
                            'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1',
                        name: 'Ahmed',
                        title: 'Engineer',
                        rate: 4.5,
                      ),
                      FreelancerModel(
                        img:
                            'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                        name: 'Mohamed',
                        title: 'Doctor',
                        rate: 3.5,
                      ),
                      FreelancerModel(
                        img:
                            'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1',
                        name: 'Ahmed',
                        title: 'Engineer',
                        rate: 4.5,
                      ),
                      FreelancerModel(
                        img:
                            'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
                        name: 'Mohamed',
                        title: 'Doctor',
                        rate: 3.5,
                      ),
     FreelancerModel(
      img: "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&...",
      name: 'Ahmed',
      title: 'Engineer',
      rate: 1,
    ),
  ];

    return Scaffold(
       drawer: Drawer(
        child: Column(
          children: [
            // عنصر تسجيل الدخول
            ListTile(
              title: Text('Login'),
              onTap: () => Navigator.pushNamed(context, Routes.login),
            ),
            // عنصر إنشاء حساب
            ListTile(
              title: Text('Signup'),
              onTap: () => Navigator.pushNamed(context, Routes.signup),
            ),
          ],
        ),
      ),
      // زر عائم للرجوع إلى الشاشة السابقة
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pop(context); // يرجع إلى الشاشة السابقة
      // onPressed: () {
      //         showSnackBar(context); // دالة لعرض رسالة مؤقتة
      // زر عائم يظهر SnackBar عند الضغط

      // هاد قبل ما اعمل لل showSnackBar دالة يظهر SnackBar عند الضغط
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text('Hello')), // رسالة مؤقتة تظهر أسفل الشاشة
      //     );
      //   },
      // ),

      //   },
      // ),

      // شريط التطبيق يحتوي على أيقونة، شعار، وأيقونات تنبيه وسلة
      appBar: AppBar(
        // تخصيص شريط التطبيق
        //الapp bar بيكون ابيض لما اعمل scroll بيصير رمادي ليه
        // هيك عدلت الخاصية تبع الapp bar لما اعمل scroll
        backgroundColor: Colors.white, // لون ثابت
//         - هذا يحدد لون خلفية الـ AppBar باللون الأبيض بشكل ثابت.
// - يعني مهما كان الثيم أو الوضع (Light/Dark)، الخلفية ستظهر بيضاء.

        elevation: 0, // بدون ظل عند التمرير
        surfaceTintColor: Colors.transparent, // يمنع تأثير التعتيم
        //  leading: IconButton(
        //           icon: const Icon(Icons.arrow_back),
        //           onPressed: () {
        //             Navigator.pop(context);
        //           },
        //         ),

        //  leading: Icon(Icons.menu),
        //  title: Image.asset('assets/images/shopping-cart.svg', height: 30),
        title: Row(
                  children: [
                   
                        Icon(Icons.blur_on, color: Colors.deepPurple),
        SvgPicture.asset(
  'assets/images/logo-79.svg',
  height: 30,
  width: 30,
  fit: BoxFit.contain,
) ] ) , 
        //  SvgPicture.asset('assets/images/logo-79.svg', height: 30),
        actions: [
          // Image.asset('assets/images/m1.jpeg'),
          SvgPicture.asset('assets/images/notification-bing.svg', height: 30),
          SizedBox(width: 20),
          // Image.asset('assets/images/m1.jpeg'),
          SvgPicture.asset('assets/images/shopping-cart.svg', height: 30),
          SizedBox(width: 20),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                Routes.login,
                //MaterialPageRoute(builder: (context) => Login()),
              );
            },
            icon: Icon(Icons.logout),
          ), // IconButton
        ],
      ), // AppBar
      // الزر العائم
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context); // عند الضغط، تظهر رسالة SnackBar
        },
        child: const Icon(Icons.add), // أيقونة الزائد
        tooltip: 'إضافة عنصر',

        // الـ tooltip هو نص صغير بيظهر للمستخدم لما يعمل long press (ضغط مطوّل) أو hover (لما يكون التطبيق على الويب/الـ desktop ويوقف الماوس فوق الزر).
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  child: Text("Hello $name "),

                  // child: Text("Hello ${name ?? "Guest"}"),
                  alignment: AlignmentGeometry.centerLeft,
                ),
                Row(
                  // children: [
                  //   TextField(
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ), // OutlineInputBorder
                  //     ), // InputDecoration
                  //   ), // TextField
                  //   Icon(Icons.sort),
                  // ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      // SizedBox(
                      //   width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    //  Icon(Icons.sort),
                    const SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.sort),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // ياخد عرض الشاشة
                  height: 200,
                  // هنا بيشتغل لأنه داخل SizedBox
                  child: Image.asset(
                    'assets/images/Group1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                //   SvgPicture.asset('assets/images/offer.svg', height: 30, fit: BoxFit.fitWidth),
                SizedBox(height: 20),
                SectionWidget(sectionTitle: 'Top Rated Freelances'),
                SizedBox(height: 10),


// ويدجت لعرض قائمة الفريلانسرز
SizedBox(
  height: 155, // ارتفاع القائمة
  // child: ListView.builder(
  //   scrollDirection: Axis.horizontal, // عرض أفقي
   child: ListView.separated(
              scrollDirection: Axis.horizontal, // عرض أفقي
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              separatorBuilder: (context, index) => SizedBox(width: 10),
    itemCount: freelancers.length, // عدد العناصر في القائمة
    itemBuilder: (context, index) {
      return FreelancerInfoWidget(
        model: freelancers[index], // تمرير بيانات الفريلانسر حسب الفهرس
      );
    },
  ),
),
                // تمرير أفقي يسمح بالتمرير داخل صف من العناصر
                // SingleChildScrollView(
                //   scrollDirection:
                //       Axis.horizontal, // تحديد اتجاه التمرير ليكون أفقي
                //   child: Row(
                //     // صف يحتوي على عناصر FreelancerInfo
                //     children: [
                //       // عنصر يعرض معلومات مستقل: صورة، اسم، وظيفة، وتقييم
                     
                //     ],
                //   ),
                // ),

                SizedBox(height: 20),
                //   Image.asset('offer.png', fit: BoxFit.fitWidth)
                SectionWidget(sectionTitle: 'Top Services'),
                SizedBox(height: 20),
 SizedBox(
  height: 600, 
   child: ListView.separated(
                scrollDirection: Axis.vertical, // عرض أفقي
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                separatorBuilder: (context, index) => SizedBox(width: 10),
      itemCount: freelancers.length, // عدد العناصر في القائمة
      itemBuilder: (context, index) {
        return ServiceInfo(
          serviceImg:                  "data:image/jpeg;base64,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"
   
             // freelancers[index].img,
         , model: freelancers[index], // تمرير بيانات الفريلانسر حسب الفهرس
        );
      },
    ),
 ),
                // عنصر خدمة يحتوي على صورة من الإنترنت
    //             ServiceInfo(
    //               serviceImg:"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEBAQDxAPEBAVDhUWEA8PDw8PFhAQFRUWFxURFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0gHR8tKysrLS0rLS0tKy0tLS0tLSstLSstLS0tKysrKy0tLS0tLS0tLS0tLS0rLS0tKy0rLf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAAAQMEBQIGB//EADsQAAIBAgQDBQUGBgIDAQAAAAABAgMRBBIhMQVBURMiYXGRBkKBocEUMmKx0fAHFSNScuFDgjNjkiT/xAAZAQEBAQEBAQAAAAAAAAAAAAAAAQIDBAX/xAAqEQEBAAIBBAECBAcAAAAAAAAAAQIRAxIhMUFREzIEImGBFGJxkaGx8P/aAAwDAQACEQMRAD8A+xAAHy3QAAAAgABgIChgIAAYgCGAAADEBQxiABgIYAAAUMBDAAAChgAAAxDKAYhoqAYhlAAABAAM5zLqjjqtGAAQAgAAGIAGAgAYCGUAAAQwEMAGIChjEADAAKAYgAYABQDEADAAKhjQgAYxDKAAAooVIO9+QoRTLcUmirazPRpqGonauJMaJ0y+R0B1EHE5ZcHwjkASA4ZY3G6qgAAyAYhgAABQAABDAAAYHLaWrdlzb0sjOlxqDbVNOdvevZfB8xvTWOFy8NMZRp45v3PSV/oR1uJTT7tLTq5fQu2pxZW6aQGbhMfKckmktdrGka0mfHcLqmAAGAADAAAAhgAFUxiQIqGAAUQUWKtHVMjjOzJ5O6PTFqtfUsJaFGc9S1SnprorbvkItdqVt7JdW7ClXgt5w/8AqJ5mhiniaspu+RStTXLL1tyZsLCR6HD69viO/wBDX3VZ+1U7q04+qCeIhylF+TTIOyj4EFWhG5jPK5Tus4cdtGMk1dbDuZ2Hjkd4q65xb+a6Fv7dHRKm7tpauPMxMZrdumcuKy9kwCc/L4Bczdb7OJgAsy6r1IGM47SPVeqDtI9V6oDsp8T4jGhG9nOT+7CP5t8l4liVaK1copeaPK42hUqzzRm6sXN58sXHKtk9XeSXRW0XM1jq3TeGG+98IeLcWlXh2bla8vcTS0e2+un6l7g1BKCUivVg1GnTnl/ptuTTvZvRR87Xb1e/gZ+J9paan2VBOpVW0Y7Lxk9kiZyY5PdxYW4akexp0IjlQfJ+upnYfEVJJOyWm1y3CrUW5qZT4c7jZ7T4fSV5JbWv0LxQddNO9k/HQvot08/LPZgAEcQMQFDAAABgBQwBAUMAAqPBVvb/AASenbN+FL9WSVP4h4OC1c/PuW28/wB3PPQ/hthGk3WxL0tpKnG/n3Sxhv4c8PvaX2iXnWt+SRqXN9K4/hP5v8Hjv4m4ZN5KUp+PaQin4bXJ+He2f8xpVI0abhHMoSnmbbe7itFyt6ndT+HXDLWdGb861Vfk0LgvCqNCUqeGp5KKm8sbylrzd3dvVGOS5Sat8knBlZ9OXt8vRcIw2WKL2KqSjFuKu0rpdfAdBZYmXxLiyTdOks9TotoLk5Pl5HO6kJLlkz6vtng43U69OnNaSp1JxjOMv7XDe5y/aCrNx7LC4ipF+/aFK3TSpKL+RXo+zGHdeWJ7CDrNp52rtOyTkvxPe56XBYJRX6mZ38OluOPpjfzHGNNRwkovl2tWjFP4wcn8jD4zwnieLVqjoKne/Y06tRJ9MzyrN+XgfQlSj4Hdo+BrpMfxNwu5I+NYv2cxdFXWGc0lr2c1Jr4Xu/gmQYLh2Orf+PC14x5SnGvFPybikz7LVhF9DnDRjBu6Uov7ysrrxRZju6rv/H59PbGb/wC/V53hOAxSpUouhG8YyU8yj3k13fe3TW/iXKHDcX70MPfq4xV/HS5t4ejhsy7KOVq7tFON+Xe620LUmldvRdW9kazmvFfJzzu7uMSHC673eHj5U835ozsbFxdlUhUa3y4eEY+t7v4FziXFnUfZ0n3Peltm/wBGRjZuMXY5dVrtx8dveqWPk7uUrcrxisq9OpB/PMRPLQwkVGy72XWXi3J6RX7uZOPxNSTtcv8As99pScaHZxTl3qk4+99TGGMmW55v93tvbDv6+fD0ND2enUgvtdbLG15QpPIrc7y3fwsVuHcKw9Oc3QgqdNyutW3KytmbbvrYqYqNRySq4mVZp96KjkivDR6nouG5cq0SVtDplcftkct5a3bvf7RNhsSk7XW3qaNKvFlWrhYS3im+vNeT3KWJwdWnaVKd484zvp4prcbyjOscv0bE6aexJhouFtdG9V5mdgXUWs5X8ErJGlQeaXgl8+RqXbjyTU0tgAB4zAAKGAgAYxDABiGaDAAKjx2EqcixdppmdRlY04K6NYvTlHWOxOSnm5vSP+T/AHcr8Lw6ilczeI4hurlf3YaLzer/AH4Gjhacqi6R/NHDPLeTvhh04/1R8Zxc6n9HDu1/v1VtBfh6yOuF8NjTioxT8W3dyfNtvdl6FCMdEi1ShlV2SY7u63c9TpjqjQUSDH8ShSWur92MdZS8kZeO4xKpJ0sNydp1mrxj1Uf7pfJfIkwWAUdXeUnvKWrfmxcvWJMNd8zhiqs2m1k/C9X8bFiLqXs5RiutpP5Isxw3Mm7NCYpc/hWlgJT1hXT01WS/1uhR4fXX/JC3XvX9LFrsly0fJ9CShXbeWVr8n1/2Tp05ZZ8kna7/AGdYbDKmt2295Pn+iMH2l4i8yoRemjnbm+SPSHgq8s+IqSev9R/mZrHDOvPdaWCoJ2OeJYJyjpuXMJoloXlKNtbfE1NPRdx84x2DnBu6KuG4tOnempPLrtplvvqe44tGEk1FJs8ZjuGuLva7vz29DNunfG7ncfzWEU7J7X/2XOFe0LjZTT1fdtrvysYkMNeTi9W9X0stkWZ8ObySV0lVjdrk+T9bGHbUvl9K4Viu1jms10UtPkXMY24NeBkez8ZKKzWv4GtUd3Y7Y38rw5T8yOhotTTw1PKtd3q/0K+Eo3eZ7L7q8epdLHm5s93UAABXADEMAAAAYxDKAYhlAAAVHgqbNPB1ORlbMsUKlmXGvVlENeCeJlfbMvyRvp2S6WPM1K39WcvxM0qWNutWcPdej1GnnI8VB1FlbeXmk2riwjzFta6IvlPFU6GCUUrJJF+nBJHaSRVxNf8At1L2xTvlU9StYgq0q7SlBK3OLeWVuVr6erKsZtyd9Ff5GzHFU7K84LTW8ojKXW655clxusYy6uLlSV6sZQV7Xaur9LrQ7p4hT1T8n0L9TFUmmnKLTWq+8muniebq4NKf/wCV1Ypv/ktkj4RT7z8mc96deK9fbKa/03eI8RjCnmTSnb7l9W3omvjbzPPcO4LXk8zhl/yaT9DYwOEUainVblaKyuW0Za3dtlo9/PqWuKcVVNRhTV5yv3uUI/3eL6f6PRcccp1ZdmJLhl08ffftkQm02uadmvFHUrnNGJYpxOHS7VWjh7nE8DF7q5pQhoOSRr6bHV3eVrcLUMTFpd2UfmmtC9R4es8013JLVfVGzOnGSTtqndBk1HRpv6jrB0cqSJ6azSsufPoubIoX2XwRpYeioLxe7/fIPPyZ6TRVlZbDQhleQmNCGAAAFDAAAYxDRQAAFDAAKj5/V3HTkczZHcPYhlK+Z9ZktN7FW2i82WKO/wADzvRWxw7E2ujUp1kYVBW2LkJGpWbN1tQdyCrhYt3yp+ZzgWy4a1tnfTVKOEj/AGr0O/sqLVrEM6yTtz6LUXGQ6rUMKVnq7k0oRsdKnUfJLxk/ojuGEXvPN4bL0M7Yy5MZ7ZnFOLww8G7Zp27sVz+PJGNg606n9So7zlq+iXKK6JB7VyTr25RhFW6K1/qc8OeiRLba9HHro38taBKQUzqE7M3tirKmdZk9yv2iLNHBzlv3V47+g6nLKyeUc2kSYfCVJavurq9/Qv0MJCGqV31evp0LBL3crzfCKhQjDbfnJ7slAA427MYhlQAgAAGIZQAAAMYgKGAAUMAAo+dTkRzlo/Ilmr6letyXVmbdR7cZuipG2TyOqbtI4rPvpdEiajTuzjHatKhHQs04HGHgW6VM0z4WMOy22QU4WJFK25uOdR1Yu6Tlo91z9S7QppLRJeSsZNes+0S8NEa+EldHbDCXFw5bXQmdSRHVmoxlJ7KLb8krnnyxuN1XJ4Tj9TNXqP8AG18Fp9Dvh8XbquhTrXlJN7t3fxNjBUtEZ0+lO2Ol7DQzLQnlh1Y4w6sX4wu0urNacsqkwOFjCKlbvNb9PBdC2ICPFbu7MYgKhgAAMZyMoYCGAAAFDAQwAYhlDAQwAAAo+cQmQzlefggcrDwsNTnyX0+jx4+0NR2kaWC1KtXD3ZcwVJxsYjVa1CGxeoxK2HLsGdI5Wp4nFWXQMxXxGJUFKT5LQ1axGRj8Ras7fvRGnw/Fvqzy2MrPOn1u35tmnw2tsbxumMsdvVxWbm15Gf7RVuzotX1n3V5bv5L5lnB1Lo857UYzPUyraCt/2976L4G+bXSxxY7zZFCGaZ6DCQ0Mjh1PW5v4aJ5o9mbvKWMM7zj8fyOGiTBff/6sVyz+2r4AAeMDEMAGIAGAAAwEADGcjKGAhgMYgKGAhlDAQAfMmrmjgaGhXVLwNrhlHa5w8vqXs4eD5k9HD9TT7FWIlCx06dOXVtDTp2J4hYEr6LfotTTJVJmDj8X2jsvup+r6nqaOC0bnvbSO9vFnibWbXRm+izvWOuXtHGIV5L/H9Szw52ditUpuU7qSvZaMmoqUWm1Ypt6J4nsqcp87af5PY8tK8pdddTR4jiMyjFbLV+b/AH8yphYXdzHJlu6dOLHU2v4GloatJFXDQL0EZi5USZJw/wC9Ly+pFMn4dvP4fUlc+T7augAEeUDACgAYAAAAAAAAAhDAYIAKGMQBDAQyhiAAPH0sOauDpWGBjGPo5VdTI5IAOjkUY3aS3bNHD0FBePN9QA78Mnlw5bfDuR4LikMlerH/ANjfwev1ADXJ4Z4/KlQn3pye2ay+GhahildR68gA4u3tzVRYwsBAcXp9Nigi3FABqOdcVGWOGrST8foAGaxy/auDACPKAACgGAAIYAACACAQwAQADAoBgAQAAFDAAA//2Q=="
    //                   ,model:FreelancerModel(
    //   img: "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&...",
    //   name: 'Ahmed',
    //   title: 'Engineer',
    //   rate: 1,
    // ), ),

    //             ServiceInfo(
    //               serviceImg:
    //               "data:image/jpeg;base64,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"
    //          , model: FreelancerModel(
    //                     img:
    //                         'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
    //                     name: 'Mohamed',
    //                     title: 'Doctor',
    //                     rate: 3.5,
    //                   ), ),

    //           ServiceInfo(
    //               serviceImg:"data:image/jpeg;base64,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"
    //                   ,model:FreelancerModel(
    //   img: "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&...",
    //   name: 'Ahmed',
    //   title: 'Engineer',
    //   rate: 1,
    // ), ),

    //             ServiceInfo(
    //               serviceImg:
    //               "data:image/jpeg;base64,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"
    //          , model: FreelancerModel(
    //                     img:
    //                         'https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg',
    //                     name: 'Mohamed',
    //                     title: 'Doctor',
    //                     rate: 3.5,
    //                   ), ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  //         Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,

  //           children: [
  //             Container(
  //               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  //               decoration: BoxDecoration(
  //                 gradient: LinearGradient(
  //   end: Alignment.centerRight,
  //   begin: Alignment.centerLeft,
  //   colors: [Color(0xffC2D7F2), Colors.white],
  // ),
  //                 borderRadius: BorderRadius.circular(8),
  //               ),
  //               child: Text(
  //                 'Top Services',
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.w600,
  //                 ),
  //               ),
  //             ),
  //         TextButton(
  //               onPressed: () {},
  //               child: Text(
  //                 'View All',
  //                 style: TextStyle(decoration: TextDecoration.underline),
  //               ),
  //         ),   ],
  //         ),

  //               Row(                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

  //                 children: [
  // Container(

  //                     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  //                     decoration: BoxDecoration(
  //                       gradient: LinearGradient(
  //         end: Alignment.centerRight,
  //         begin: Alignment.centerLeft,
  //         colors: [Color(0xffC2D7F2), Colors.white],
  //       ),
  //                       borderRadius: BorderRadius.circular(8),
  //                     ),
  //                     child: Text(
  //                       'Top Services',
  //                       style: TextStyle(
  //                         fontSize: 20,
  //                         fontWeight: FontWeight.w600,
  //                       ),
  //                     ),
  //                   ),
  // TextButton(
  //                     onPressed: () {},
  //                     child: Text(
  //                       'View All',
  //                       style: TextStyle(decoration: TextDecoration.underline),
  //                     ),
  //               ),
  //                 ],
  //               )

  // import 'package:flutter/material.dart';
  // import 'package:flutter_svg/flutter_svg.dart';
  // import 'package:my_flutter_app/widgets/section_widget.dart';

  // class Home extends StatelessWidget {
  //   const Home({super.key});

  //   @override
  //   Widget build(BuildContext context) {
  //     return Scaffold(
  //       appBar: AppBar(
  //         leading: Icon(Icons.menu),
  //         title: SvgPicture.asset(
  //           'assets/images/logo-79.svg',
  //           height: 30,
  //         ),
  //         actions: [
  //           SvgPicture.asset(
  //             'assets/images/shopping-cart.svg',
  //             height: 30,
  //           ),
  //           SizedBox(width: 20),
  //           SvgPicture.asset(
  //             'assets/images/notification-bing.svg',
  //             height: 30,
  //           ),
  //           SizedBox(width: 20),
  //         ],
  //       ),
  //       body: SingleChildScrollView(
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Column(
  //             children: [
  //               // Search Row
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Expanded(
  //                     child: TextField(
  //                       decoration: InputDecoration(
  //                         border: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(10),
  //                         ),
  //                         hintText: 'Search',
  //                         prefixIcon: Icon(Icons.search),
  //                       ),
  //                     ),
  //                   ),
  //                   SizedBox(width: 10),
  //                   Container(
  //                     padding: EdgeInsets.all(10),
  //                     decoration: BoxDecoration(
  //                       border: Border.all(color: Colors.grey),
  //                       borderRadius: BorderRadius.circular(10),
  //                     ),
  //                     child: Icon(Icons.sort),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: 20),

  //               // Image Banner
  //               Container(
  //                 width: double.infinity,
  //                 height: 100,
  //                 child: Image.asset(
  //                   'assets/images/Group1.png',
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //               SizedBox(height: 20),

  //               // Sections
  //               SectionWidget(sectionTitle: 'Top Services'),
  //               SizedBox(height: 20),
  //               SectionWidget(sectionTitle: 'Top Rated Freelancers'),
  //               SizedBox(height: 20),

  //               // Add more content here
  //               Container(
  //                 height: 200,
  //                 color: Colors.grey[200],
  //                 child: Center(
  //                   child: Text('More Content Here'),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     );
  //   }
}

// دالة لعرض SnackBar برسالة "Hello"
void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hello تمت إضافة عنصر جديد')));
}
