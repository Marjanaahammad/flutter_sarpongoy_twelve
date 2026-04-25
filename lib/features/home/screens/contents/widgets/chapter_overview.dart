import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import '../controller/get_ready_controller.dart';
import 'next_button.dart';
import 'play_audio.dart';

class ChapterOverviewContent extends StatelessWidget {
  final GetReadyController controller;

  const ChapterOverviewContent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center, // keeps content centered
      children: [
        Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  controller.model.overviewImagePath,
                  width: MediaQuery.of(context).size.width,
                  //height: 650,
                  fit: BoxFit.cover, // shows full image
                ),
              ),
            )
            .animate()
            .fadeIn(duration: 2000.ms)
            .slideX(begin: 1, end: 0, curve: Curves.easeOutCubic),

        const SizedBox(height: 50),

        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlayAudio(controller: controller),
                const SizedBox(width: 40),
                Obx(() => next_button(
                  isEnabled: controller.isOverviewFinishedInSession.value || controller.isOverviewCompleted.value,
                  onTap: () {
                    controller.goToHook();
                  },
                )),
              ],
            )
            .animate()
            .fadeIn(delay: 2000.ms, duration: 1400.ms)
            .slideY(begin: 0.5, end: 0, curve: Curves.easeOutCubic),
      ],
    );
  }
}
