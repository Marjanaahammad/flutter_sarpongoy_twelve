import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_sarpongoy_twelve/core/flutter_math_fork/lib/flutter_math.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/controller/independent_controller.dart';
import 'package:flutter_sarpongoy_twelve/features/home/models/strand_model.dart';
import 'package:get/get.dart';

class IndependentQuizScreen extends StatefulWidget {
  final Lesson lesson;
  const IndependentQuizScreen({super.key, required this.lesson});

  @override
  State<IndependentQuizScreen> createState() => _IndependentQuizScreenState();
}

class _IndependentQuizScreenState extends State<IndependentQuizScreen> {
  late final IndependentController controller;

  @override
  void initState() {
    super.initState();
    Get.delete<IndependentController>();
    controller = Get.put(
      IndependentController()
        ..initData(
          widget.lesson.independentPractice,
          widget.lesson.topic,
          course: widget.lesson.courseName,
          strand: widget.lesson.strandName,
          subStrand: widget.lesson.subStrandName,
          number: widget.lesson.lessonNumber,
          grade: widget.lesson.gradeName,
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1DC),
      body: SafeArea(
        child: Stack(
          children: [
            // Intro Banner
            Obx(() {
              if (controller.showBanner.value) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF6060E8),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: const Text(
                          "Independent Practice",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                        .animate()
                        .slideX(
                          begin: -1,
                          end: 0,
                          duration: 800.ms,
                          curve: Curves.easeOutCubic,
                        )
                        .fadeIn(),
                  ),
                );
              }
              return const SizedBox.shrink();
            }),

            // Quiz View
            Obx(() {
              if (controller.showQuiz.value &&
                  !controller.showFinalResults.value) {
                final question =
                    controller.questions[controller.currentQuestionIndex.value];

                return Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(50),
                            margin: const EdgeInsets.only(bottom: 30),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: _buildFormattedText(
                              question.question,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Column(
                            children: List.generate(question.options.length, (
                              index,
                            ) {
                              final isSelected =
                                  controller.selectedOptionIndex.value == index;
                              final isIncorrect = controller
                                  .incorrectOptionIndices
                                  .contains(index);
                              final letter = String.fromCharCode(
                                65 + index,
                              ); // A, B, C, D

                              //Color backgroundColor = Colors.white;

                              return GestureDetector(
                                onTap: () {
                                  if (!isIncorrect) {
                                    controller.selectOption(index);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 12,
                                    ),
                                    margin: const EdgeInsets.only(bottom: 12),
                                    decoration: BoxDecoration(
                                      color: controller.isRevealState.value
                                          ? (index == question.correctIndex
                                              ? Colors.green.shade200
                                              : null)
                                          : (isIncorrect
                                              ? const Color(0xFFDBDEDD)
                                              : (isSelected
                                                  ? (controller.isChecked.value
                                                      ? (controller
                                                              .isCorrectState
                                                              .value
                                                          ? Colors
                                                              .green.shade100
                                                          : Colors.red)
                                                      : const Color(
                                                          0xFFFFC85D,
                                                        ))
                                                  : null)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 85,
                                          width: 85,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: controller
                                                    .isRevealState.value
                                                ? (index ==
                                                        question.correctIndex
                                                    ? Colors.white
                                                    : const Color(0xFF3F6DA8))
                                                : (isSelected
                                                    ? Colors.white
                                                    : const Color(
                                                        0xFF3F6DA8,
                                                      )),
                                            shape: BoxShape.circle,
                                          ),
                                          child: _buildFormattedText(
                                            letter,
                                            style: TextStyle(
                                              color: controller
                                                      .isRevealState.value
                                                  ? (index ==
                                                          question.correctIndex
                                                      ? const Color(
                                                          0xFF3F6DA8,
                                                        )
                                                      : const Color(
                                                          0xFFDDF2F9,
                                                        ))
                                                  : (isSelected
                                                      ? const Color(
                                                          0xFF3F6DA8,
                                                        )
                                                      : const Color(
                                                          0xFFDDF2F9,
                                                        )),
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Expanded(
                                          child: _buildFormattedText(
                                            question.options[index],
                                            style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF14357A),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animate().fadeIn(delay: (200 * index).ms);
                            }),
                          ),

                          // // Staggered Feedback (Difficulty and Explanation)
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 20),
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Obx(() {
                          //         if (controller.showDifficulty.value) {
                          //           return Center(
                          //             child:
                          //                 Text(
                          //                       "Difficulty: ${question.difficulty}",
                          //                       style: TextStyle(
                          //                         color: Colors.grey.shade700,
                          //                         fontWeight: FontWeight.bold,
                          //                         fontSize: 26,
                          //                       ),
                          //                     )
                          //                     .animate()
                          //                     .slideX(
                          //                       begin: -1,
                          //                       end: 0,
                          //                       duration: 500.ms,
                          //                     )
                          //                     .fadeIn(),
                          //           );
                          //         }
                          //         return const SizedBox.shrink();
                          //       }),
                          //       const SizedBox(height: 10),
                          //       Obx(() {
                          //         if (controller.showExplanation.value) {
                          //           return Center(
                          //             child:
                          //                 Text(
                          //                       "Explanation: ${question.explanation}",
                          //                       style: TextStyle(
                          //                         color: Colors.grey.shade700,
                          //                         fontSize: 20,
                          //                         fontWeight: FontWeight.bold,
                          //                       ),
                          //                     )
                          //                     .animate()
                          //                     .slideY(
                          //                       begin: 1,
                          //                       end: 0,
                          //                       duration: 500.ms,
                          //                     )
                          //                     .fadeIn(),
                          //           );
                          //         }
                          //         return const SizedBox.shrink();
                          //       }),
                          //     ],
                          //   ),
                          // ),
                          if (controller.showCheckButton.value)
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: ElevatedButton.icon(
                                    onPressed: () => controller.checkAnswer(),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFC85D),
                                      foregroundColor: Color(0xFF14357A),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 15,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    icon: const Icon(
                                      Icons.check,
                                      size: 40,
                                      color: Color(0xFF14357A),
                                    ),
                                    label: const Text(
                                      "Check Answer",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ).animate().fadeIn(),

                          if (controller.isChecked.value &&
                              !controller.isCorrectState.value &&
                              !controller.isForcedCorrect.value &&
                              !controller.isSecondFailPending.value &&
                              !controller.isRevealState.value)
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: ElevatedButton.icon(
                                    onPressed: () => controller.tryAgain(),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFD56F),
                                      foregroundColor: const Color(0xFF14357A),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 15,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    icon: const Icon(
                                      Icons.refresh,
                                      size: 30,
                                      color: Color(0xFF14357A),
                                    ),
                                    label: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: const Text(
                                        "Try Again",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ).animate().fadeIn(),

                          if (controller.isSecondFailPending.value)
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: ElevatedButton.icon(
                                    onPressed: () =>
                                        controller.handleContinue(),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFD56F),
                                      foregroundColor: const Color(0xFF14357A),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 15,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    icon: const Icon(
                                      Icons.navigate_next,
                                      size: 30,
                                      color: Color(0xFF14357A),
                                    ),
                                    label: const Text(
                                      "Continue",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ).animate().fadeIn(),

                          if (controller.showNextButton.value &&
                              !controller.isSecondFailPending.value)
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (controller.currentQuestionIndex.value > 0)
                                    IconButton(
                                      onPressed: () =>
                                          controller.previousQuestion(),
                                      icon: Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF0F0FE5),
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.navigate_before_rounded,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  const SizedBox(width: 30),
                                  IconButton(
                                    onPressed: () => controller.nextQuestion(),
                                    icon: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF0F0FE5),
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.navigate_next_rounded,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ).animate().fadeIn(),
                        ],
                      ),
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            }),

            // Final Feedback View
            Obx(() {
              if (controller.showFinalResults.value) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.workspace_premium_rounded,
                          size: 100,
                          color: Colors.amber,
                        ).animate().scale(delay: 200.ms),
                        const SizedBox(height: 20),
                        _buildFormattedText(
                          "Your Score: ${controller.correctAnswersCount.value} / ${controller.questions.length}",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ).animate().fadeIn(delay: 400.ms),
                        const SizedBox(height: 20),
                        // Container(
                        //       padding: const EdgeInsets.all(20),
                        //       decoration: BoxDecoration(
                        //         color: Colors.grey.shade200,
                        //         borderRadius: BorderRadius.circular(15),
                        //         border: Border.all(
                        //           color: const Color(0xFF6060E8),
                        //           width: 1.5,
                        //         ),
                        //       ),
                        //       child: Text(
                        //         controller.getFeedbackMessage(),
                        //         textAlign: TextAlign.center,
                        //         style: TextStyle(
                        //           fontSize: 18,
                        //           color: Colors.grey.shade800,
                        //           height: 1.5,
                        //         ),
                        //       ),
                        //     )
                        //     .animate()
                        //     .slideY(begin: 0.2, end: 0)
                        //     .fadeIn(delay: 600.ms),
                        const SizedBox(height: 40),

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Get.snackbar(
                                    'Congratulations!',
                                    'You have successfully completed the Practice Section.',
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                    margin: const EdgeInsets.all(12),
                                    duration: const Duration(seconds: 2),
                                    snackPosition: SnackPosition.BOTTOM,
                                  );

                                  Future.delayed(
                                    const Duration(milliseconds: 2200),
                                    () {
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pop();
                                    },
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFFFD56F),
                                  foregroundColor: const Color(0xFF14357A),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                label: const Text(
                                  "Finish",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ).animate().fadeIn(delay: 1000.ms),

                        // ElevatedButton(
                        //   onPressed: () {
                        //     Get.back();
                        //     Get.back(); // Go back twice to return to Strand Screen
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: const Color(0xFF0F0FE5),
                        //     padding: const EdgeInsets.symmetric(
                        //       horizontal: 40,
                        //       vertical: 15,
                        //     ),
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(30),
                        //     ),
                        //   ),
                        //   child: const Text(
                        //     "Finish",
                        //     style: TextStyle(fontSize: 18, color: Colors.white),
                        //   ),
                        // ).animate().fadeIn(delay: 1000.ms),
                      ],
                    ),
                  ).animate().fadeIn(),
                );
              }
              return const SizedBox.shrink();
            }),

            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _convertToUnicodeMath(String text) {
    String result = text.replaceAll(r'\times', '×').replaceAll(r'\div', '÷');

    final Map<String, String> superscripts = {
      '0': '⁰',
      '1': '¹',
      '2': '²',
      '3': '³',
      '4': '⁴',
      '5': '⁵',
      '6': '⁶',
      '7': '⁷',
      '8': '⁸',
      '9': '⁹',
      'n': 'ⁿ',
      '+': '⁺',
      '-': '⁻',
      '(': '⁽',
      ')': '⁾',
    };

    // Handle simple exponents like ^3 or ^n
    result = result.replaceAllMapped(RegExp(r'\^([0-9n+\-()])'), (m) {
      return superscripts[m.group(1)] ?? m.group(0)!;
    });

    // Handle multi-character exponents in braces like ^{12}
    result = result.replaceAllMapped(RegExp(r'\^{([0-9n+\-()]+)}'), (m) {
      return m
          .group(1)!
          .split('')
          .map((char) => superscripts[char] ?? char)
          .join('');
    });

    // Handle degree symbol
    result = result.replaceAll(r'^{\circ}', '°').replaceAll(r'^0', '°');

    return result;
  }

  Widget _buildFormattedText(String text, {required TextStyle style}) {
    final List<InlineSpan> spans = [];

    // Regex to find LaTeX environments, bold text, OR words separated by spaces
    // Group 1: \begin{...} ... \end{...}
    // Group 2: **bold text**
    // Group 3: Individual non-space tokens
    final regex =
        RegExp(r'(\\begin\{.*?\}.*?\\end\{.*?\})|(\*\*.*?\*\*)|(\S+)');
    final matches = regex.allMatches(text);

    int lastMatchEnd = 0;

    for (final match in matches) {
      // Add whitespace/text between matches to preserve original spacing
      if (match.start > lastMatchEnd) {
        String interText = text.substring(lastMatchEnd, match.start);
        if (interText.isNotEmpty) {
          spans.add(TextSpan(text: interText, style: style));
        }
      }

      String part = match.group(0)!;
      bool isEnvironment = match.group(1) != null;
      bool isBold = match.group(2) != null;

      if (isBold) {
        String cleanText = part.substring(2, part.length - 2);
        spans.add(TextSpan(
          text: cleanText,
          style: style.copyWith(
            fontWeight: FontWeight.w800,
            fontSize: (style.fontSize ?? 16) + 2,
            color: Colors.black,
          ),
        ));
      } else {
        bool isMath = isEnvironment ||
            part.contains('^') ||
            part.contains('\\') ||
            part.contains(RegExp(r'_[0-9a-zA-Z{]')) ||
            part.contains('times') ||
            part.contains('div');

        if (isMath) {
          if (isEnvironment) {
            // Environments always use Math.tex
            spans.add(
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Math.tex(
                  part,
                  mathStyle: part.contains(r'\frac')
                      ? MathStyle.display
                      : MathStyle.text,
                  textStyle: style.copyWith(
                    fontSize: (style.fontSize ?? 16) * 1.2,
                  ),
                ),
              ),
            );
          } else {
            String unicodeWord = _convertToUnicodeMath(part);

            // Check if it still contains complex LaTeX characters
            bool isComplex = unicodeWord.contains('\\') ||
                unicodeWord.contains('{') ||
                unicodeWord.contains('}') ||
                unicodeWord.contains('_');

            if (!isComplex) {
              spans.add(TextSpan(text: unicodeWord, style: style));
            } else {
              // Fallback to Math.tex for complex stuff
              String sanitized = part
                  .replaceAllMapped(
                    RegExp(r'_(?![a-zA-Z0-9\\{])'),
                    (match) => r'\_',
                  )
                  .replaceAllMapped(
                    RegExp(r'\^(?![a-zA-Z0-9\\{])'),
                    (match) => r'\^',
                  );

              spans.add(
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Math.tex(
                    sanitized,
                    mathStyle: sanitized.contains(r'\frac')
                        ? MathStyle.display
                        : MathStyle.text,
                    textStyle: style.copyWith(
                      fontSize: (style.fontSize ?? 16) * 1.2,
                    ),
                  ),
                ),
              );
            }
          }
        } else {
          spans.add(TextSpan(text: part, style: style));
        }
      }

      lastMatchEnd = match.end;
    }

    // Add any remaining text after the last match
    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd), style: style));
    }

    return Text.rich(TextSpan(children: spans));
  }
}
