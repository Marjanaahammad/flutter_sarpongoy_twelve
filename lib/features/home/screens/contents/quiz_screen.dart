import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_sarpongoy_twelve/core/flutter_math_fork/lib/flutter_math.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/controller/quiz_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_sarpongoy_twelve/features/home/models/strand_model.dart';

class QuizScreen extends StatefulWidget {
  final Lesson lesson;
  final String? courseName;
  final String? strandName;
  final String? subStrandName;
  final String? lessonNumber;
  final String? gradeName;

  const QuizScreen({
    super.key,
    required this.lesson,
    this.courseName,
    this.strandName,
    this.subStrandName,
    this.lessonNumber,
    this.gradeName,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final QuizController controller;

  @override
  void initState() {
    super.initState();
    Get.delete<QuizController>();
    controller = Get.put(
      QuizController()
        ..initData(
          widget.lesson.quiz,
          widget.lesson.topic,
          course: widget.courseName,
          strand: widget.strandName,
          subStrand: widget.subStrandName,
          number: widget.lessonNumber,
          grade: widget.gradeName,
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
                          "Time for Quiz",
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
                                fontSize: 30,
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
                              final letter = String.fromCharCode(
                                65 + index,
                              ); // A, B, C, D

                              Color textColor = const Color(0xFF14357A);

                              if (isSelected) {
                                textColor = const Color(0xFF14357A);
                              }

                              return GestureDetector(
                                onTap: () {
                                  controller.selectOption(index);
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
                                      color: isSelected
                                          ? const Color(0xFFFFC85D)
                                          : null,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 85,
                                          width: 85,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? Colors.white
                                                : const Color(0xFF3F6DA8),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Text(
                                            letter,
                                            style: TextStyle(
                                              color: isSelected
                                                  ? const Color(0xFF3F6DA8)
                                                  : const Color(0xFFDDF2F9),
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
                                              color: textColor,
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

                          // Removed staggered feedback (Difficulty/Explanation)
                          if (controller.showNextButton.value)
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
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        // Overall Score Header
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.workspace_premium_rounded,
                              size: 60,
                              color: Colors.amber,
                            ).animate().scale(delay: 200.ms),
                            const SizedBox(width: 15),
                            Text(
                              "Your Score: ${controller.correctAnswersCount.value} / ${controller.questions.length}",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ).animate().fadeIn(delay: 400.ms),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Results Table Header
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: const BoxDecoration(
                            color: Color(0xFFB4C6E7),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Questions and Responses",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ).animate().fadeIn(delay: 600.ms),

                        // Detailed Results List
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: ListView.builder(
                              itemCount: controller.questions.length,
                              itemBuilder: (context, index) {
                                final question = controller.questions[index];
                                final userAnswerIndex =
                                    controller.userAnswers[index] ?? -1;
                                final isCorrect =
                                    userAnswerIndex == question.correctIndex;

                                return Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Question Row (Teal background)
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.all(12),
                                        color: const Color(0xFFA9D0CE),
                                        child: _buildFormattedText(
                                          "${question.question}",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),

                                      // Options and Icon Row (White background)
                                      Container(
                                        color: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 16,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Status Icon
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 16,
                                                top: 4,
                                              ),
                                              child: Icon(
                                                isCorrect
                                                    ? Icons.check_circle
                                                    : Icons.cancel,
                                                color: isCorrect
                                                    ? Colors.green.shade600
                                                    : Colors.red.shade600,
                                                size: 28,
                                              ),
                                            ),

                                            // Options List
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ...List.generate(
                                                    question.options.length,
                                                    (optIndex) {
                                                      final letter =
                                                          String.fromCharCode(
                                                        65 + optIndex,
                                                      );
                                                      final isUserChoice =
                                                          optIndex ==
                                                              userAnswerIndex;
                                                      final isActualCorrect =
                                                          optIndex ==
                                                              question
                                                                  .correctIndex;

                                                      // Determine text color based on correct/selected
                                                      Color textColor =
                                                          Colors.black87;
                                                      FontWeight weight =
                                                          FontWeight.normal;

                                                      if (isActualCorrect) {
                                                        textColor = Colors
                                                            .green.shade700;
                                                        weight =
                                                            FontWeight.bold;
                                                      } else if (isUserChoice &&
                                                          !isCorrect) {
                                                        textColor =
                                                            Colors.red.shade700;
                                                        weight =
                                                            FontWeight.bold;
                                                      }

                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          bottom: 6,
                                                        ),
                                                        child:
                                                            _buildFormattedText(
                                                          "$letter) ${question.options[optIndex]}",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: textColor,
                                                            fontWeight: weight,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                  // Explanation Block
                                                  const SizedBox(height: 12),

                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      10,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        6,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        //Icon(Icons.lightbulb_outline, size: 20, color: Colors.amber.shade700),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Expanded(
                                                          child:
                                                              _buildFormattedText(
                                                            'Difficulty: ${question.difficulty}',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .black87,
                                                              //fontStyle: FontStyle.italic,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  SizedBox(height: 10),

                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      10,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        6,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        //Icon(Icons.lightbulb_outline, size: 20, color: Colors.amber.shade700),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Expanded(
                                                          child:
                                                              _buildFormattedText(
                                                            question
                                                                .explanation,
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .black87,
                                                              //fontStyle: FontStyle.italic,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ).animate().fadeIn(delay: 800.ms),

                        const SizedBox(height: 20),

                        // Finish Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.back();
                              Get.back(); // Return to previous screens
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0F0FE5),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Finish",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ).animate().fadeIn(delay: 1000.ms),
                        const SizedBox(height: 10),
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

    // Regex to find LaTeX environments OR words separated by spaces
    // Group 1: \begin{...} ... \end{...}
    // Group 2: Individual non-space tokens
    final regex = RegExp(r'(\\begin\{.*?\}.*?\\end\{.*?\})|(\S+)');
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

      lastMatchEnd = match.end;
    }

    // Add any remaining text after the last match
    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd), style: style));
    }

    return Text.rich(TextSpan(children: spans));
  }
}
