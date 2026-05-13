import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../controller/learn_controller.dart';
import 'forward_button.dart';
import 'next_button.dart';
import 'play_audio.dart';

/// A single generic widget that renders any numbered learn part.
/// It reads [controller.currentPartIndex] to know which part to show.
class LearnPartWidget extends StatelessWidget {
  final LearnController controller;

  const LearnPartWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final index = controller.currentPartIndex.value;
      final part = controller.model.parts[index];
      final isFirst = controller.isFirstPart;
      final isLast = controller.isLastPart;
      final finished = controller.isCurrentPartFinished;
      final isVideo = part.videoPath != null;

      return Column(
        children: [
          // ── Media (Image or Video) ──────────────────────────────────────────
          Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: isVideo
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height:
                              MediaQuery.of(context).size.height *
                              .48, // Fixed height to increase size
                          color: Colors.black,
                          child:
                              controller.isVideoInitialized.value &&
                                  controller.videoController != null
                              ? Stack(
                                  alignment: Alignment.bottomCenter,
                                  fit: StackFit.passthrough,
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.fill,
                                      child: SizedBox(
                                        width: controller
                                            .videoController!
                                            .value
                                            .size
                                            .width,
                                        height: controller
                                            .videoController!
                                            .value
                                            .size
                                            .height,
                                        child: VideoPlayer(
                                          controller.videoController!,
                                        ),
                                      ),
                                    ),
                                    // Restricted Progress Bar
                                    Positioned(
                                      bottom: 10,
                                      left: 20,
                                      right: 20,
                                      child: Obx(() {
                                        final currentPos = controller
                                            .position
                                            .value
                                            .inMilliseconds
                                            .toDouble();
                                        final maxDuration = controller
                                            .duration
                                            .value
                                            .inMilliseconds
                                            .toDouble();

                                        return SliderTheme(
                                          data: SliderTheme.of(context).copyWith(
                                            trackHeight: 2,
                                            thumbShape:
                                                const RoundSliderThumbShape(
                                                  enabledThumbRadius: 4,
                                                ),
                                            overlayShape:
                                                const RoundSliderOverlayShape(
                                                  overlayRadius: 10,
                                                ),
                                            activeTrackColor: Colors.green,
                                            inactiveTrackColor: Colors.white
                                                .withOpacity(0.5),
                                            thumbColor: Colors.green,
                                          ),
                                          child: Slider(
                                            value: currentPos.clamp(
                                              0,
                                              maxDuration,
                                            ),
                                            min: 0,
                                            max: maxDuration > 0
                                                ? maxDuration
                                                : 1,
                                            onChanged: (value) {
                                              final newPos = Duration(
                                                milliseconds: value.toInt(),
                                              );
                                              // Allow seeking forward and backward if finished,
                                              // otherwise allow seeking backward only.
                                              if (finished ||
                                                  newPos <=
                                                      controller
                                                          .position
                                                          .value) {
                                                controller.videoController
                                                    ?.seekTo(newPos);
                                              }
                                            },
                                          ),
                                        );
                                      }),
                                    ),
                                  ],
                                )
                              : const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                        )
                      : Image.asset(
                          part.imagePath,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                ),
              )
              .animate(key: ValueKey('media_$index'))
              .fadeIn(duration: 2000.ms)
              .slideX(begin: 1, end: 0, curve: Curves.easeOutCubic),

          const SizedBox(height: 50),

          // ── Controls ───────────────────────────────────────────────────────
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Back button — hidden on first part
                  if (!isFirst) ...[
                    Back_Button(onTap: () => controller.goToPreviousPart()),
                    const SizedBox(width: 40),
                  ],

                  PlayAudio(controller: controller),

                  const SizedBox(width: 40),

                  // Next / Complete button
                  if (isLast)
                    _completeButton(context, finished)
                  else
                    next_button(
                      isEnabled: true,
                      onTap: () => controller.goToNextPart(),
                    ),
                ],
              )
              .animate(key: ValueKey('ctrl_$index'))
              .fadeIn(delay: 2000.ms, duration: 1400.ms)
              .slideY(begin: 0.5, end: 0, curve: Curves.easeOutCubic),
        ],
      );
    });
  }

  Widget _completeButton(BuildContext context, bool finished) {
    return IgnorePointer(
      ignoring: false,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFF0F0FE5),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {
                    Get.snackbar(
                      'Congratulations!',
                      'You have successfully completed the learn section.',
                      backgroundColor: Colors.green,
                      colorText: Colors.white,
                      margin: const EdgeInsets.all(12),
                      duration: const Duration(seconds: 2),
                    );
                    Future.delayed(const Duration(milliseconds: 2200), () {
                      Navigator.of(context).pop();
                    });
                  }
                : null,
            icon: const Icon(
              Icons.navigate_next_rounded,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
