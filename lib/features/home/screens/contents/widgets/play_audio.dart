// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class PlayAudio extends StatelessWidget {
//   final dynamic controller;
//
//   const PlayAudio({super.key, required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         /// Progress Bar
//         Obx(
//           () => SliderTheme(
//             data: SliderTheme.of(context).copyWith(
//               trackHeight: 4,
//               thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
//               activeTrackColor: Color(0xFF006AC1),
//               inactiveTrackColor: Colors.grey[300],
//               thumbColor: Color(0xFF006AC1),
//               overlayColor: Colors.black.withOpacity(0.1),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40.0),
//               child: Slider(
//                 min: 0,
//                 max: controller.duration.value.inSeconds.toDouble() > 0
//                     ? controller.duration.value.inSeconds.toDouble()
//                     : 1.0,
//                 value: controller.position.value.inSeconds.toDouble().clamp(
//                   0,
//                   controller.duration.value.inSeconds.toDouble() > 0
//                       ? controller.duration.value.inSeconds.toDouble()
//                       : 1.0,
//                 ),
//                 onChanged: (value) {
//                   if (controller.duration.value.inSeconds > 0) {
//                     controller.seek(Duration(seconds: value.toInt()));
//                   }
//                 },
//               ),
//             ),
//           ),
//         ),
//
//         /// Time Labels
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Obx(
//                 () => Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: Text(
//                     controller.formatTime(controller.position.value),
//                     style: const TextStyle(color: Colors.black54),
//                   ),
//                 ),
//               ),
//               Obx(
//                 () => Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: Text(
//                     controller.formatTime(controller.duration.value),
//                     style: const TextStyle(color: Colors.black54),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//         const SizedBox(height: 10),
//
//         /// Controls Row
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             /// Loop
//             Padding(
//               padding: const EdgeInsets.only(left: 40),
//               child: IconButton(
//                 icon: const Icon(Icons.replay, size: 28, color: Color(0xFF006AC1)),
//                 onPressed: controller.restart,
//               ),
//             ),
//
//             /// Backward 5 sec
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color:  Color(0xFF006AC1),
//               ),
//
//               child: IconButton(
//                 icon: Center(
//                   child: const Icon(
//                     Icons.fast_rewind,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//                 onPressed: () => controller.skip(-5),
//               ),
//             ),
//
//             /// Play / Pause
//             Obx(
//               () => GestureDetector(
//                 onTap: controller.playPause,
//                 child: Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Color(0xFF006AC1),
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 2),
//                   ),
//                   child: Icon(
//                     controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                     size: 36,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//
//             /// Forward 5 sec
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color:  Color(0xFF006AC1),
//
//               ),
//               child: IconButton(
//                 icon: Center(
//                   child: const Icon(
//                     Icons.fast_forward,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//                 onPressed: () => controller.skip(5),
//               ),
//             ),
//
//             /// Shuffle
//             Obx(
//               () => Padding(
//                 padding: const EdgeInsets.only(right: 40.0),
//                 child: IconButton(
//                   icon: Icon(
//                     Icons.shuffle,
//                     size: 28,
//                     color: controller.isShuffled.value
//                         ? Colors.blue
//                         : Color(0xFF006AC1),
//                   ),
//                   onPressed: controller.toggleShuffle,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayAudio extends StatelessWidget {
  final dynamic controller;

  const PlayAudio({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Controls Row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Play / Pause
            Obx(
                  () => IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: controller.playPause,
                icon: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF0F0FE5),
                  ),
                  child: Icon(
                    controller.isPlaying.value
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: const Color(0xFFFFFFFF),
                    size: 40,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 40),

            /// Loop
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF0F0FE5),
                ),
                child: Icon(
                  Icons.refresh_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              onPressed: controller.restart,
            ),
          ],
        ),
      ],
    );
  }
}
