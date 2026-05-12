import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import '../controller/get_ready_controller.dart';
import 'forward_button.dart';
import 'play_audio.dart';

class HookContent extends StatelessWidget {
  final GetReadyController controller;

  const HookContent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // keeps content centered
        children: [
          Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    controller.model.hookImagePath,
                    width: double.infinity,
                    //height: 750,
                    fit: BoxFit.fill,
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
                  Back_Button(
                    onTap: () {
                      controller.goBackToOverview();
                    },
                  ),
                  const SizedBox(width: 100),
                  PlayAudio(controller: controller),
                  const SizedBox(width: 100),
                  Obx(
                    () => IgnorePointer(
                      ignoring:
                          !controller.isHookFinishedInSession.value &&
                          !controller.isHookCompleted.value,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color:
                              (controller.isHookFinishedInSession.value ||
                                  controller.isHookCompleted.value)
                              ? const Color(0xFF0F0FE5)
                              : Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed:
                                (controller.isHookFinishedInSession.value ||
                                    controller.isHookCompleted.value)
                                ? () {
                                    Get.snackbar(
                                      'Congratulations!',
                                      'You have successfully completed the chapter overview.',
                                      backgroundColor: Colors.green,
                                      colorText: Colors.white,
                                      margin: const EdgeInsets.all(12),
                                      duration: const Duration(seconds: 2),
                                    );

                                    Future.delayed(
                                      const Duration(milliseconds: 2200),
                                      () {
                                        Navigator.of(context).pop();
                                      },
                                    );
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
                    ),
                  ),
                ],
              )
              .animate()
              .fadeIn(
                delay: 2000.ms,
                duration: 1000.ms,
              ) // Delayed more to sync with audio
              .slideY(begin: 0.5, end: 0, curve: Curves.easeOutCubic),
        ],
      ),
    );
  }
}
