import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_sarpongoy_twelve/core/flutter_math_fork/lib/flutter_math.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/controller/practice_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_sarpongoy_twelve/features/home/models/strand_model.dart';

class PracticeContentScreen extends StatefulWidget {
  final Lesson lesson;
  final String? courseName;
  final String? strandName;
  final String? subStrandName;
  final String? lessonNumber;
  final String? gradeName;
  final bool isBece;

  const PracticeContentScreen({
    super.key,
    required this.lesson,
    this.courseName,
    this.strandName,
    this.subStrandName,
    this.lessonNumber,
    this.gradeName,
    this.isBece = false,
  });

  @override
  State<PracticeContentScreen> createState() => _PracticeContentScreenState();
}

class _PracticeContentScreenState extends State<PracticeContentScreen> {
  late final PracticeController controller;

  @override
  void initState() {
    super.initState();
    Get.delete<PracticeController>();
    controller = Get.put(
      PracticeController()
        ..isBece = widget.isBece
        ..initData(
          widget.lesson,
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
            LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 30),
                            Obx(() {
                              if (controller.questions.isEmpty) {
                                return const SizedBox();
                              }
                              final question = controller.questions[
                                  controller.currentQuestionIndex.value];

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  if (controller.showScenario.value)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            35.0,
                                          ),
                                          child: _buildFormattedText(
                                            question.scenario,
                                            style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                        .animate()
                                        .slideX(
                                          begin: 1,
                                          end: 0,
                                          duration: 800.ms,
                                          curve: Curves.easeOutCubic,
                                        )
                                        .fadeIn(),
                                  if (controller.showViewAnswerButton.value)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.black26,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: ElevatedButton.icon(
                                            onPressed: () =>
                                                controller.revealAnswer(),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(
                                                0xFFFFC85D,
                                              ),
                                              foregroundColor: Color(
                                                0xFF14357A,
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 30,
                                                vertical: 15,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            icon: const Icon(
                                              Icons.check,
                                              size: 40,
                                              color: Color(0xFF14357A),
                                            ),
                                            label: const Text(
                                              "View Answer",
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ).animate().fadeIn(),

                                 
                                  //   padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  //   child: GestureDetector(
                                  //     onTap: () {
                                  //       controller.revealAnswer();
                                  //     },
                                  //     child: Container(
                                  //       decoration: BoxDecoration(
                                  //         color: const Color(0xFF0F0FE5),
                                  //         borderRadius: BorderRadius.circular(10),
                                  //         boxShadow: [
                                  //           BoxShadow(
                                  //             color: Colors.black.withOpacity(0.1),
                                  //             blurRadius: 4,
                                  //             offset: const Offset(0, 2),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                  //       child: const Text(
                                  //         "View Answer",
                                  //         style: TextStyle(
                                  //           fontSize: 18,
                                  //           fontWeight: FontWeight.bold,
                                  //           color: Colors.white,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ).animate().fadeIn(duration: 2000.ms),
                                  if (controller.showAnswer.value)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 20,
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            20.0,
                                          ),
                                          child: _buildFormattedText(
                                            question.answer,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF14357A),
                                            ),
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
                                  if (controller.showExplanation.value &&
                                      !controller.isBece)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 40,
                                        left: 20,
                                        right: 20,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          // border: Border.all(
                                          //     color: Colors.deepPurple.shade700,
                                          //     width: 2
                                          // ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            18.0,
                                          ),
                                          child: _buildFormattedText(
                                            question.explanation,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                        .animate()
                                        .slideY(
                                          begin: 1,
                                          end: 0,
                                          duration: 800.ms,
                                          curve: Curves.easeOutCubic,
                                        )
                                        .fadeIn(),
                                  if (controller.showNextButton.value)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 80.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          if (controller
                                                  .currentQuestionIndex.value >
                                              0)
                                            IconButton(
                                              onPressed: () {
                                                controller.previousQuestion();
                                              },
                                              icon: Container(
                                                height: 60,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                  color: const Color(
                                                    0xFF0F0FE5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    100,
                                                  ),
                                                ),
                                                child: const Icon(
                                                  Icons.navigate_before_rounded,
                                                  size: 50,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ).animate().fadeIn(
                                                  duration: 500.ms,
                                                ),
                                          IconButton(
                                            onPressed: () {
                                              controller.nextQuestion();
                                            },
                                            icon: Container(
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF0F0FE5),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: const Icon(
                                                Icons.navigate_next_rounded,
                                                size: 50,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ).animate().fadeIn(duration: 500.ms),
                                        ],
                                      ),
                                    ),
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
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
                          "Guided Practice",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                        .animate()
                        .slideX(
                          begin: 1,
                          end: 0,
                          duration: 800.ms,
                          curve: Curves.easeOutCubic,
                        )
                        .fadeIn(),
                  ),
                  // Removed timed fadeOut as it's now reactive to showBanner flag
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

    result = result.replaceAllMapped(RegExp(r'\^([0-9n+\-()])'), (m) {
      return superscripts[m.group(1)] ?? m.group(0)!;
    });

    result = result.replaceAllMapped(RegExp(r'\^{([0-9n+\-()]+)}'), (m) {
      return m
          .group(1)!
          .split('')
          .map((char) => superscripts[char] ?? char)
          .join('');
    });

    result = result.replaceAll(r'^{\circ}', '°').replaceAll(r'^0', '°');

    return result;
  }

  Widget _buildFormattedText(String text, {required TextStyle style}) {
    final List<InlineSpan> spans = [];

    // Regex to find LaTeX environments, bold text, OR words separated by spaces
    // Group 1: \begin{...} ... \end{...}
    // Group 2: **bold text**
    // Group 3: Individual non-space tokens
    final regex = RegExp(r'(\\begin\{.*?\}.*?\\end\{.*?\})|(\*\*.*?\*\*)|(\S+)');
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
            fontSize: 24,
            color: Colors.black, // Temporary test color
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
                  .replaceAllMapped(RegExp(r'\^(?=[\s^]|$)'), (match) => r'\^');

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

    return Text.rich(TextSpan(children: spans), textAlign: TextAlign.center);
  }
}
