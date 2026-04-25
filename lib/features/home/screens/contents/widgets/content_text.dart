// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
//
// class AnimatedWelcomeText extends StatelessWidget {
//   const AnimatedWelcomeText({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 500,
//       child: const Text(
//         "Welcome to a new lesson on Conversation and Everyday Discourse. "
//         "Today, you will learn how to speak effectively in different situations. "
//         "We will focus on using the right register—knowing when to be formal and when to be informal. "
//         "You will also learn techniques like voice modulation and eye contact to make your communication clear and respectful.",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 16,
//           height: 1.4,
//           fontWeight: FontWeight.w600,
//           color: Colors.white,
//         ),
//       ).animate().fadeIn(delay: 800.ms, duration: 4000.ms).slideX(begin: 1, end: 0, curve: Curves.easeOutCubic),
//     );
//   }
// }