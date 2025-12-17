// import 'package:flutter/material.dart';
// import 'package:my_flutter_app/data/freelancer_model.dart';
// class FreelancerDetails extends StatefulWidget {
//   final FreelancerModel model;

//   const FreelancerDetails({
//     super.key,
//        required this.model,});



//   @override
//   State<FreelancerDetails> createState() => _FreelancerDetailsState();
// }

// class _FreelancerDetailsState extends State<FreelancerDetails>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;
//   late Animation<Offset> _slideAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 600),
//     );

//     _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeIn),
//     );

//     _slideAnimation = Tween<Offset>(
//       begin: const Offset(0, 0.2), // يبدأ من تحت شوي
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeOut),
//     );

//     _controller.forward(); // يبدأ الأنيميشن مباشرة
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.model.name)),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Hero(
//             tag: widget.model.img,
//             child: Image.network(
//                    widget.model.img,
//                   height: 260,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//             // Image.asset(
//             //   widget.model.img,
//             //   height: 250,
//             //   width: double.infinity,
//             //   fit: BoxFit.cover,
//             // ),
//           ),
//           const SizedBox(height: 16),
//           FadeTransition(
//             opacity: _fadeAnimation,
//             child: SlideTransition(
//               position: _slideAnimation,
//               child: Column(
//                 children: [
//                   Text(widget.model.name,
//                       style: const TextStyle(
//                           fontSize: 22, fontWeight: FontWeight.bold)),
//                   Text(widget.model.title,
//                       style: const TextStyle(
//                           fontSize: 18, color: Colors.grey)),
//                   const SizedBox(height: 8),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
                      
//                       const SizedBox(width: 4),
//                       widget.model.rating,
//                       // Text(widget.rating.toString(),
//                       //     style: const TextStyle(
//                       //         fontSize: 18, color: Colors.grey)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/freelancer_model.dart';

class FreelancerDetails extends StatefulWidget {
  final FreelancerModel model;

  const FreelancerDetails({
    super.key,
    required this.model,
  });

  @override
  State<FreelancerDetails> createState() => _FreelancerDetailsState();
}

class _FreelancerDetailsState extends State<FreelancerDetails>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// ✅ Hero مطابق 100%
          Hero(
            tag: widget.model.img,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                widget.model.img,
                height: 260,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 16),

          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Column(
                children: [
                  Text(
                    widget.model.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.model.title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.scale(
                    scale:1.2,
                    child: widget.model.rating,
                  ),
                ],
              ),
            ),

                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
