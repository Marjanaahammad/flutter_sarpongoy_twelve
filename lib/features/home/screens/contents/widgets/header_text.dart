// import 'package:flutter/material.dart';
//
// class HeaderText extends StatefulWidget {
//   const HeaderText({super.key, required this.text, this.color});
//   final String text;
//   final Color? color;
//
//   @override
//   State<HeaderText> createState() => _HeaderTextState();
// }
//
// class _HeaderTextState extends State<HeaderText>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;
//   late Animation<Offset> _slideAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1200),
//     );
//
//     _fadeAnimation = Tween<double>(begin: 0.1, end: 2.0).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeOut),
//     );
//
//     _slideAnimation = Tween<Offset>(
//       begin: const Offset(0.0, 0.4), // starts a bit lower
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
//     );
//
//     // Start animation when widget appears
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: FadeTransition(
//         opacity: _fadeAnimation,
//         child: SlideTransition(
//           position: _slideAnimation,
//           child: Padding(
//             padding: EdgeInsets.all(16.0), // add some breathing room
//             child: AnimatedContainer(
//               duration: const Duration(milliseconds: 800),
//               curve: Curves.easeOutCubic,
//               height: 60,
//               width: 450,
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [
//                     Color(0xFFf2a85e),
//                     Color(0xFFFF7F00), // second gradient color
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//                 //color: const Color(0xFFFF7F00),
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     blurRadius: 12,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                 child: Center(
//                   child: AnimatedOpacity(
//                     opacity: 1.0, // you can control this with a bool later
//                     duration: const Duration(milliseconds: 1200),
//                     child: Text(
//                       widget.text,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                         letterSpacing: 1.2,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }