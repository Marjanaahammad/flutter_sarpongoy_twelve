import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/models/course_model.dart';
import '../../home/models/strand_model.dart';

import '../../home/screens/contents/data/all_get_ready_data.dart';
import '../../home/screens/contents/data/all_learn_data.dart';
import '../../home/screens/contents/data/all_practice_data.dart';
import '../../home/screens/contents/data/all_independent_quiz_data.dart';
import '../../home/screens/contents/data/all_quiz_data.dart';
import '../../progress/repositories/progress_repository.dart';
import '../../progress/models/progress_model.dart';
import 'package:intl/intl.dart';

class SidebarController extends GetxController {
  RxInt selectedIndex = 0.obs; // -1 means course view
  Rxn<Course> selectedCourse = Rxn<Course>();
  RxInt selectedStrandIndex = 0.obs;
  RxString selectedGrade = "JHS 1".obs;
  RxString strandSearchText = "".obs;
  final TextEditingController strandSearchController = TextEditingController();
  final RxString selectedWeeklyWorkFilter = "Weekly".obs;
  final RxMap<String, String> selectedActivityStatsFilters =
      <String, String>{}.obs;
  final RxList<ActivityProgress> globalProgressCache = <ActivityProgress>[].obs;

  final RxDouble globalTotalCompletion = 0.0.obs;
  final RxMap<String, double> globalSubjectProgress = <String, double>{}.obs;

  double get totalCompletion => globalTotalCompletion.value;

  double getSubjectProgress(String title) {
    final course = courses.firstWhereOrNull((c) => c.title == title);
    if (course == null) return 0.0;

    int totalLessons = 0;
    int completedLessons = 0;
    for (var strand in course.strands) {
      for (var subStrand in strand.subStrands) {
        totalLessons += subStrand.lessons.length;
        completedLessons +=
            subStrand.lessons.where((l) => l.isCompleted).length;
      }
    }
    if (totalLessons == 0) return 0.0;
    return completedLessons / totalLessons;
  }

  List<String> getTopTwoSubjects() {
    final list = courses.map((c) {
      return {"title": c.title, "progress": getSubjectProgress(c.title)};
    }).toList();

    list.sort(
      (a, b) => (b["progress"] as double).compareTo(a["progress"] as double),
    );

    return [
      (list[0]["title"] as String).replaceAll("\n", " "),
      (list.length > 1 ? (list[1]["title"] as String) : "").replaceAll(
        "\n",
        " ",
      ),
    ];
  }

  Future<void> calculateGlobalProgress() async {
    final grades = ["JHS 1", "JHS 2", "JHS 3"];
    final courseTitles = [
      "English",
      "Science",
      "Math",
      "Social Studies",
      "Religious & Moral Education",
    ];

    int overallTotalLessons = 0;
    int overallCompletedLessons = 0;
    Map<String, int> subjectTotalLessons = {};
    Map<String, int> subjectCompletedLessons = {};

    for (var grade in grades) {
      for (var title in courseTitles) {
        final strands = _generateDummyStrands(title, grade);
        int courseTotal = 0;
        int courseCompleted = 0;

        for (var strand in strands) {
          for (var subStrand in strand.subStrands) {
            for (var lesson in subStrand.lessons) {
              courseTotal++;
              // Simplified check: if independent or quiz progress exists
              final independent = await _progressRepo.getSpecificProgress(
                lesson.topic,
                'independent',
                'final_score',
              );
              final quiz = await _progressRepo.getSpecificProgress(
                lesson.topic,
                'quiz',
                'final_score',
              );

              if (independent != null || quiz != null) {
                courseCompleted++;
              }
            }
          }
        }

        overallTotalLessons += courseTotal;
        overallCompletedLessons += courseCompleted;

        subjectTotalLessons[title] =
            (subjectTotalLessons[title] ?? 0) + courseTotal;
        subjectCompletedLessons[title] =
            (subjectCompletedLessons[title] ?? 0) + courseCompleted;
      }
    }

    if (overallTotalLessons > 0) {
      globalTotalCompletion.value =
          overallCompletedLessons / overallTotalLessons;
    } else {
      globalTotalCompletion.value = 0.0;
    }

    courseTitles.forEach((title) {
      final total = subjectTotalLessons[title] ?? 0;
      final completed = subjectCompletedLessons[title] ?? 0;
      globalSubjectProgress[title] = total > 0 ? completed / total : 0.0;
    });
  }

  final _progressRepo = Get.find<ProgressRepository>();

  final RxList<Course> courses = <Course>[].obs;

  @override
  void onInit() {
    super.onInit();
    ever(selectedGrade, (_) {
      selectedStrandIndex.value = 0;
      refreshCourses();
    });
    refreshCourses();
    strandSearchController.addListener(() {
      strandSearchText.value = strandSearchController.text;
    });
    calculateGlobalProgress();
    refreshGlobalProgressCache();

    // Initialize activity filters for all subjects
    for (var title in [
      "English",
      "Science",
      "Math",
      "Social Studies",
      "Religious & Moral Education",
    ]) {
      selectedActivityStatsFilters[title] = "Past 1 Week";
    }
  }

  @override
  void onClose() {
    strandSearchController.dispose();
    super.onClose();
  }

  void refreshCourses() {
    courses.assignAll([
      Course(
        title: "English",
        color: const Color(0xFFFFE9EE),
        image: "assets/images/Group.png",
        textColor: const Color(0xFFFF2B55),
        strands: _generateDummyStrands("English", selectedGrade.value),
      ),
      Course(
        title: "Science",
        color: const Color(0xFFFAF2FF),
        image: "assets/images/science_home.png",
        textColor: const Color(0xFF8A3ED6),
        strands: _generateDummyStrands("Science", selectedGrade.value),
      ),
      Course(
        title: "Math",
        color: const Color(0xFFF2FAFF),
        image: 'assets/images/math_home.png',
        textColor: const Color(0xFF006AC1),
        strands: _generateDummyStrands("Math", selectedGrade.value),
      ),
      Course(
        title: "Social Studies",
        image: 'assets/images/world_13717883 1.png',
        color: const Color(0xFFFFF1DC),
        textColor: const Color(0xFFFF7811),
        strands: _generateDummyStrands("Social Studies", selectedGrade.value),
      ),
      Course(
        title: "Religious & Moral Education",
        image: 'assets/images/al-quran_16652601 1.png',
        color: const Color(0xFFFFFCEB),
        textColor: const Color(0xFFA69900),
        strands: _generateDummyStrands(
          "Religious & Moral Education",
          selectedGrade.value,
        ),
      ),
    ]);
    loadActualProgress();
  }

  Future<void> loadActualProgress() async {
    final dateFormat = DateFormat('d MMMM, y h:mm a');

    for (int c = 0; c < courses.length; c++) {
      final course = courses[c];
      final List<Strand> updatedStrands = [];
      for (int s = 0; s < course.strands.length; s++) {
        final strand = course.strands[s];
        final List<SubStrand> updatedSubStrands = [];
        bool allLessonsInStrandCompleted = true;

        for (var subStrand in strand.subStrands) {
          final List<Lesson> updatedLessons = [];
          for (var lesson in subStrand.lessons) {
            // Fetch progress for each activity type
            final getReady = await _progressRepo.getSpecificProgress(
              lesson.topic,
              'get_ready',
              'hook',
            );
            final learn = await _progressRepo.getSpecificProgress(
              lesson.topic,
              'learn',
              'part_${String.fromCharCode(96 + lesson.learn.parts.length)}',
            );
            final practice = await _progressRepo.getSpecificProgress(
              lesson.topic,
              'guided_practice',
              'completion',
            );
            final independent = await _progressRepo.getSpecificProgress(
              lesson.topic,
              'independent',
              'final_score',
            );
            final quiz = await _progressRepo.getSpecificProgress(
              lesson.topic,
              'quiz',
              'final_score',
            );

            String? practiceScoreStr;
            String? practiceOriginalScoreStr;
            if (independent != null &&
                independent.score != null &&
                independent.totalQuestions != null &&
                independent.totalQuestions! > 0) {
              int percentage =
                  ((independent.score! / independent.totalQuestions!) * 100)
                      .round();
              practiceScoreStr = "$percentage%";

              if (independent.originalScore != null) {
                int originalPercentage = ((independent.originalScore! /
                            independent.totalQuestions!) *
                        100)
                    .round();
                practiceOriginalScoreStr = "$originalPercentage%";
              }
            }

            String? quizScoreStr;
            String? quizOriginalScoreStr;
            if (quiz != null &&
                quiz.score != null &&
                quiz.totalQuestions != null &&
                quiz.totalQuestions! > 0) {
              int percentage =
                  ((quiz.score! / quiz.totalQuestions!) * 100).round();
              quizScoreStr = "$percentage%";

              if (quiz.originalScore != null) {
                int originalPercentage =
                    ((quiz.originalScore! / quiz.totalQuestions!) * 100)
                        .round();
                quizOriginalScoreStr = "$originalPercentage%";
              }
            }

            // A lesson is completed if all contents and quiz are done
            final isLessonCompleted = getReady != null &&
                learn != null &&
                practice != null &&
                independent != null &&
                quiz != null;
            if (!isLessonCompleted) {
              allLessonsInStrandCompleted = false;
            }

            // Locking logic removed - all lessons are unlocked
            bool isLocked = s != 0; // Only unlock the first strand (Strand 1)

            updatedLessons.add(
              lesson.copyWith(
                getReadyDoneDate: getReady != null
                    ? dateFormat.format(getReady.lastUpdated)
                    : null,
                learnDoneDate:
                    learn != null ? dateFormat.format(learn.lastUpdated) : null,
                practiceDoneDate: independent != null
                    ? dateFormat.format(independent.lastUpdated)
                    : (practice != null
                        ? dateFormat.format(practice.lastUpdated)
                        : null),
                practiceScore: practiceScoreStr,
                practiceOriginalScore: practiceOriginalScoreStr,
                quizDoneDate:
                    quiz != null ? dateFormat.format(quiz.lastUpdated) : null,
                quizScore: quizScoreStr,
                quizOriginalScore: quizOriginalScoreStr,
                courseName: course.title,
                strandName: strand.title,
                subStrandName: subStrand.title,
                lessonNumber: (updatedLessons.length + 1).toString(),
                gradeName: selectedGrade.value,
                isLocked: isLocked,
                isCompleted: isLessonCompleted,
              ),
            );
          }
          updatedSubStrands.add(subStrand.copyWith(lessons: updatedLessons));
        }

        updatedStrands.add(
          strand.copyWith(
            subStrands: updatedSubStrands,
            isLocked: s != 0, // Only unlock the first strand (Strand 1)
          ),
        );

        // Update for next strand
      }
      courses[c] = course.copyWith(strands: updatedStrands);
    }

    // Refresh selectedCourse if active and auto-select latest unlocked strand
    if (selectedCourse.value != null) {
      final courseTitle = selectedCourse.value!.title;
      final updatedCourse = courses.firstWhere((c) => c.title == courseTitle);
      selectedCourse.value = updatedCourse;
    }
    courses.refresh();
    calculateGlobalProgress();
    refreshGlobalProgressCache();
  }

  Future<void> refreshGlobalProgressCache() async {
    final allProgress = await _progressRepo.getAllProgress();
    globalProgressCache.assignAll(allProgress);
  }

  Map<String, String> getWeeklyWorkData(String title) {
    if (globalProgressCache.isEmpty) {
      return {"practice": "0/0", "strand": "None", "quiz": "0/0"};
    }

    final now = DateTime.now();
    DateTime startTime;
    switch (selectedWeeklyWorkFilter.value) {
      case "Today":
        startTime = DateTime(now.year, now.month, now.day);
        break;
      case "Monthly":
        startTime = DateTime(now.year, now.month, 1);
        break;
      case "Weekly":
      default:
        // Ghana week usually starts on Monday or Sunday. Let's use 7 days ago for simplicity or current week start.
        startTime = now.subtract(Duration(days: now.weekday - 1));
        startTime = DateTime(startTime.year, startTime.month, startTime.day);
        break;
    }

    final periodProgress = globalProgressCache
        .where((p) => p.lastUpdated.isAfter(startTime))
        .toList();

    // To filter by course title, we need to know which lesson belongs to which course.
    // This information is in the curricular structure.
    // For simplicity, let's assume we can map lesson IDs/topics to courses.

    // We'll iterate through all grades and find lessons for THIS course title.
    final grades = ["JHS 1", "JHS 2", "JHS 3"];
    List<String> courseLessonTopics = [];
    Map<String, List<String>> strandLessonTopics = {};

    for (var grade in grades) {
      final strands = _generateDummyStrands(title, grade);
      for (var strand in strands) {
        for (var subStrand in strand.subStrands) {
          for (var lesson in subStrand.lessons) {
            courseLessonTopics.add(lesson.topic);
            if (!strandLessonTopics.containsKey(strand.title)) {
              strandLessonTopics[strand.title] = [];
            }
            strandLessonTopics[strand.title]!.add(lesson.topic);
          }
        }
      }
    }

    final courseProgress = periodProgress
        .where((p) => courseLessonTopics.contains(p.lessonId))
        .toList();

    // Practice
    final practiceRecords =
        courseProgress.where((p) => p.activityType == 'independent').toList();
    int practiceTotal = 0;
    int practiceCorrect = 0;
    for (var p in practiceRecords) {
      practiceTotal += (p.totalQuestions ?? 0).toInt();
      practiceCorrect += (p.score ?? 0).toInt();
    }

    // Quiz
    final quizRecords =
        courseProgress.where((p) => p.activityType == 'quiz').toList();
    int quizTotal = 0;
    int quizCorrect = 0;
    for (var p in quizRecords) {
      quizTotal += (p.totalQuestions ?? 0).toInt();
      quizCorrect += (p.score ?? 0).toInt();
    }

    // Strands finished
    // A strand is "finished" in this period if ALL its lessons are completed, AND at least one was completed in this period.
    // Or simpler: any strand that has progress in this period.
    // The user said "all the strand that student finish for today...".
    // I'll interpret this as strands where at least one lesson was completed in the period.
    List<String> finishedStrands = [];
    strandLessonTopics.forEach((strandTitle, topics) {
      if (topics.any(
        (topic) => periodProgress.any((p) => p.lessonId == topic),
      )) {
        finishedStrands.add(strandTitle);
      }
    });

    String practicePercent = practiceTotal > 0
        ? "${((practiceCorrect / practiceTotal) * 100).round()}%"
        : "0%";
    String quizPercent =
        quizTotal > 0 ? "${((quizCorrect / quizTotal) * 100).round()}%" : "0%";

    return {
      "practice": practicePercent,
      "quiz": quizPercent,
      "strand": finishedStrands.isEmpty ? "None" : finishedStrands.join(", "),
    };
  }

  Map<String, dynamic> getSubjectActivityStats(String title) {
    final now = DateTime.now();
    DateTime startTime;
    int daysInPeriod = 7;

    final filter = selectedActivityStatsFilters[title] ?? "Past 1 Week";

    switch (filter) {
      case "Past 1 Month":
        startTime = now.subtract(const Duration(days: 30));
        daysInPeriod = 30;
        break;
      case "Past 3 Month":
        startTime = now.subtract(const Duration(days: 90));
        daysInPeriod = 90;
        break;
      case "past 1 year":
        startTime = now.subtract(const Duration(days: 365));
        daysInPeriod = 365;
        break;
      case "Past 1 Week":
      default:
        startTime = now.subtract(const Duration(days: 7));
        daysInPeriod = 7;
        break;
    }
    startTime = DateTime(startTime.year, startTime.month, startTime.day);

    final periodProgress = globalProgressCache
        .where((p) => p.lastUpdated.isAfter(startTime))
        .toList();

    // Map lessons for this course title
    final grades = ["JHS 1", "JHS 2", "JHS 3"];
    List<String> courseLessonTopics = [];
    for (var grade in grades) {
      final strands = _generateDummyStrands(title, grade);
      for (var strand in strands) {
        for (var subStrand in strand.subStrands) {
          for (var lesson in subStrand.lessons) {
            courseLessonTopics.add(lesson.topic);
          }
        }
      }
    }

    final courseProgress = periodProgress
        .where((p) => courseLessonTopics.contains(p.lessonId))
        .toList();

    // Activity Count (unique lesson + activity type combinations in period)
    final activityCount = courseProgress.length;

    // Quiz Score
    final quizRecords =
        courseProgress.where((p) => p.activityType == 'quiz').toList();
    double avgQuizScore = 0;
    if (quizRecords.isNotEmpty) {
      double totalPercent = 0;
      for (var q in quizRecords) {
        totalPercent += (q.score ?? 0) / (q.totalQuestions ?? 1) * 100;
      }
      avgQuizScore = totalPercent / quizRecords.length;
    }

    // Heuristic for hours (30 mins per activity)
    final totalHours = (activityCount * 0.5).round();
    final avgDailyHours = (totalHours / daysInPeriod).toStringAsFixed(1);

    return {
      "activityCount": activityCount,
      "avgDailyHours": avgDailyHours,
      "totalHours": totalHours,
      "avgQuizScore": "${avgQuizScore.toStringAsFixed(1)}/100",
    };
  }

  /// Returns the grand total of study minutes across all subjects,
  /// along with a per-subject breakdown, based on local progress data.
  /// Uses the [activityMinutes] from each progress record.
  Map<String, dynamic> getActivityMinutesAllSubjects({
    List<ActivityProgress>? progress,
  }) {
    const subjectTitles = [
      "English",
      "Science",
      "Math",
      "Social Studies",
      "Religious & Moral Education",
    ];

    int grandTotalMinutes = 0;
    final Map<String, int> perSubjectMinutes = {};
    final progressToUse = progress ?? globalProgressCache;

    for (final title in subjectTitles) {
      // Find all progress records for this course title
      final grades = ["JHS 1", "JHS 2", "JHS 3"];
      List<String> courseLessonTopics = [];
      for (var grade in grades) {
        final strands = _generateDummyStrands(title, grade);
        for (var strand in strands) {
          for (var subStrand in strand.subStrands) {
            for (var lesson in subStrand.lessons) {
              courseLessonTopics.add(lesson.topic);
            }
          }
        }
      }

      final subjectProgress = progressToUse
          .where((p) => courseLessonTopics.contains(p.lessonId))
          .toList();

      int subjectMinutes = 0;
      for (var p in subjectProgress) {
        // Fallback to 30 mins if activityMinutes is 0 (legacy records)
        subjectMinutes += p.activityMinutes > 0 ? p.activityMinutes : 30;
      }

      perSubjectMinutes[title] = subjectMinutes;
      grandTotalMinutes += subjectMinutes;
    }

    return {
      "activityMinutes": grandTotalMinutes,
      "subject_minutes": perSubjectMinutes,
    };
  }

  List<Map<String, dynamic>> getSubjectDailyStats(String title) {
    final now = DateTime.now();
    List<Map<String, dynamic>> dailyStats = [];

    // Map lessons for this course title
    final grades = ["JHS 1", "JHS 2", "JHS 3"];
    List<String> courseLessonTopics = [];
    for (var grade in grades) {
      final strands = _generateDummyStrands(title, grade);
      for (var strand in strands) {
        for (var subStrand in strand.subStrands) {
          for (var lesson in subStrand.lessons) {
            courseLessonTopics.add(lesson.topic);
          }
        }
      }
    }

    for (int i = 6; i >= 0; i--) {
      final date = now.subtract(Duration(days: i));
      final dayStart = DateTime(date.year, date.month, date.day);
      final dayEnd = dayStart.add(const Duration(days: 1));

      final dayProgress = globalProgressCache
          .where(
            (p) =>
                p.lastUpdated.isAfter(dayStart) &&
                p.lastUpdated.isBefore(dayEnd),
          )
          .where((p) => courseLessonTopics.contains(p.lessonId))
          .toList();

      final count = dayProgress.length;
      final quizRecords =
          dayProgress.where((p) => p.activityType == 'quiz').toList();
      double score = 0;
      if (quizRecords.isNotEmpty) {
        double total = 0;
        for (var q in quizRecords) {
          total += (q.score ?? 0) / (q.totalQuestions ?? 1) * 100;
        }
        score = total / quizRecords.length;
      }

      final totalHours = count * 0.1;

      dailyStats.add({
        "day": DateFormat('E').format(date),
        "count": count.toDouble(),
        "dailyHours": totalHours,
        "totalHours": totalHours,
        "quizScore": score,
      });
    }

    return dailyStats;
  }

  List<Strand> _generateDummyStrands(String courseTitle, String grade) {
    final Map<String, List<Map<String, dynamic>>> courseData = {
      "English": [
        {
          "subtitle": "ORAL LANGUAGE",
          "subStrands": [
            {
              "subtitle": "CONVERSATION / EVERYDAY DISCOURSE",
              "topics": [
                "Conversation and Everyday Discourse",
                "Giving and Following Direction",
                "Using Appropriate Language to Describe Experiences",
                "Asking Questions to Elicit Elaboration",
              ],
            },
            {
              "subtitle": "LISTENING COMPREHENSION",
              "topics": [
                "Identifying Key Information in Oral Texts",
                "Sharing Opinions on Oral Texts",
              ],
            },
            {
              "subtitle": "ENGLISH SOUNDS",
              "topics": ["VOWELS AND DIPHTHONGS"],
            },
          ],
        },
        {
          "subtitle": "READING",
          "subStrands": [
            {
              "subtitle": "COMPREHENSION",
              "topics": [
                "BECOMING A READING DETECTIVE",
                "BECOMING A FICTION DETECTIVE (INFERENCE AND QUESTIONS)",
                "THE ARCHITECTS OF READING (TEXT STRUCTURES)",
              ],
            },
            {
              "subtitle": "SUMMARISING",
              "topics": ["MASTERING THE MAIN IDEA"],
            },
          ],
        },
        {
          "subtitle": "GRAMMAR",
          "subStrands": [
            {
              "subtitle": "GRAMMAR USAGE",
              "topics": [
                "Mastering Conditional Sentences (Type 1)",
                "Active and Passive Voice",
                "Reported Speech (Direct and Indirect)",
                "Question Tags",
                "Subject and Predicate",
                "Compound Sentences",
                "Dependent and Independent Clauses",
                "Nouns and Irregular Plurals",
                "Types of Pronouns",
                "Adjectives and Sense Verbs",
                "Verb Tenses and Aspects (Present Tense)",
                "Verb Tenses and Aspects (Past Tense)",
                "Adverbs",
                "Conjunctions and Linkers",
                "Prepositions and Complex Prepositions",
                "Determiners",
              ],
            },
            {
              "subtitle": "PUNCTUATION AND CAPITALISATION",
              "topics": ["USING PUNCTUATION MARKS", "CAPITALISATION RULES"],
            },
            {
              "subtitle": "VOCABULARY",
              "topics": [
                "ASKING FOR AND GIVING ADVICE",
                "AGREEING AND DISAGREEING",
                "EXPLORING PROVERBS TO ENRICH COMMUNICATION",
              ],
            },
          ],
        },
        {
          "subtitle": "WRITING",
          "subStrands": [
            {
              "subtitle": "PRODUCTION AND DISTRIBUTION OF WRITING",
              "topics": [
                "USING COHESIVE DEVICES TO LINK IDEAS",
                // "DESCRIPTIVE WRITING – PAINTING WITH WORDS",
                // "NARRATIVE WRITING – TELLING A STORY",
                // "PERSUASIVE WRITING – THE POWER OF ARGUMENT",
                // "EXPOSITORY WRITING – NOTICES AND EXPLANATIONS",
              ],
            },

            // {
            //   "subtitle": "TEXT TYPES AND PURPOSES",
            //   "topics": [
            //     "CREATING PERSUASIVE ADVERTISEMENTS",
            //     "WRITING PROCESS PARAGRAPHS",
            //     "WRITING INFORMAL LETTERS",
            //     "FORMAL WRITING (APPLICATIONS AND OFFICIAL LETTERS)",
            //     "TAKING NOTES FOR ACADEMIC PURPOSES",
            //     "DESIGNING NOTICES AND POSTERS",
            //     "WRITING ARTICLES FOR PUBLICATION",
            //     "CREATING DIALOGUES",
            //   ],
            // },
            {
              "subtitle": "BUILDING AND PRESENTING KNOWLEDGE",
              "topics": ["RESEARCHING AND PRESENTING DATA"],
            },
          ],
        },
        {
          "subtitle": "LITERATURE",
          "subStrands": [
            {
              "subtitle": "NARRATIVE, DRAMA AND POETRY",
              "topics": [
                "ELEMENTS OF WRITTEN LITERATURE",
                // "LITERARY DEVICES IN TEXTS",
                // "ORAL LITERATURE (NARRATIVES, POETRY, AND DRAMA)",
              ],
            },
          ],
        },
      ],
      "Science": [
        {
          "subtitle": "DIVERSITY OF MATTER",
          "subStrands": [
            {
              "subtitle": "MATERIALS",
              "topics": [
                "Classification of Materials",
                "Importance of Liquids in the Life of Humans",
                "Importance of Specific Solids to Life",
                "The Orderly Arrangement of the Periodic Table"
                //"Classification of Objects",
              ],
            },
            {
              "subtitle": "LIVING CELLS",
              "topics": [
                "THE STRUCTURE AND FUNCTION OF ANIMAL CELLS",
                "THE STRUCTURE AND FUNCTION OF PLANT CELLS"
                //"Classification of Objects",
              ],
            },
            // {
            //   "subtitle": "Materials",
            //   "topics": [
            //     "Physical Properties of Metals",
            //     "Polymers & Synthetics",
            //   ],
            // },
          ],
        },
        {
          "subtitle": "CYCLES",
          "subStrands": [
            {
              "subtitle": "Life Cycles",
              "topics": [
                "Human Growth Stages",
                //"Plant Reproduction Cycles"
              ],
            },
          ],
        },
        {
          "subtitle": "SYSTEMS",
          "subStrands": [
            {
              "subtitle": "Human Systems",
              "topics": [
                "Skeletal and Muscular Systems",
                //"Circulatory System Functions",
              ],
            },
            // {
            //   "subtitle": "Solar System",
            //   "topics": ["Planetary Movements", "Sun & Moon Interactions"],
            // },
          ],
        },
        {
          "subtitle": "FORCES AND ENERGY",
          "subStrands": [
            {
              "subtitle": "Force",
              "topics": [
                "Newton's Laws Overview",
                //"Friction & Gravity Effects",
              ],
            },
          ],
        },
        {
          "subtitle": "HUMANS AND THE ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "Mock Trials",
              "topics": ["Simulated Lab Practical Exams"],
            },
          ],
        },
      ],
      "Math": [
        {
          "subtitle": "NUMBER",
          "subStrands": [
            {
              "subtitle": "Number and Numeration Systems",
              "topics": ["Mastering Numbers and Numeration"],
            },
            {
              "subtitle": "Number Operations",
              "topics": ["The Power of Operations (Expanded Edition)"],
            },
            {
              "subtitle": "Fractions, Decimals and Percentages",
              "topics": [
                "The Comprehensive Guide to Fractions, Decimals, and Percentages",
              ],
            },
            {
              "subtitle": "Fractions, Decimals and Percentages",
              "topics": [
                "The Comprehensive Guide to Fractions, Decimals, and Percentages",
              ],
            },
          ],
        },
        {
          "subtitle": "ALGEBRA",
          "subStrands": [
            {
              "subtitle": "Patterns and Relations",
              "topics": ["The Pattern Masterclass"],
            },
            {
              "subtitle": "Algebraic Expressions",
              "topics": ["Mastering Algebraic Expressions (Extended Edition)"],
            },
            {
              "subtitle": "Variables and Equations",
              "topics": ["The Algebra Journey"],
            },
          ],
        },
        {
          "subtitle": "GEOMETRY AND MEASUREMENT",
          "subStrands": [
            {
              "subtitle": "Shape and Space",
              "topics": [
                "THE ARCHITECTURE OF ANGLES",
              ],
            },
            {
              "subtitle": "Measurement",
              "topics": [
                "The Complete Guide to Measurement, Area, and Vectors",
              ],
            },
            {
              "subtitle": "Position and Transformation",
              "topics": [
                "The Complete Guide to Transformation",
              ],
            },
          ],
        },
        {
          "subtitle": "HANDLING DATA",
          "subStrands": [
            {
              "subtitle": "Data",
              "topics": [
                "Comprehensive Sub-strand Review (The Data Cycle)",
              ],
            },
            {
              "subtitle": "Chance or Probability",
              "topics": [
                "The Power of Probability",
              ],
            },
          ],
        },
      ],
      "Social Studies": [
        {
          "subtitle": "ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "ENVIRONMENTAL ISSUES",
              "topics": [
                "Dealing with Sanitation Challenges",
                "Examining the Sources of Energy",
              ],
            },
            {
              "subtitle": "MAPPING SKILLS",
              "topics": ["Mapping and Locating Places"],
            },
            {
              "subtitle": "UNDERSTANDING OUR NATURAL WORLD",
              "topics": [
                "Major Physical Features of the Earth",
                "Natural Disasters in the Environment",
              ],
            },
          ],
        },
        {
          "subtitle": "FAMILY LIFE",
          "subStrands": [
            {
              "subtitle": "ADOLESCENT REPRODUCTIVE HEALTH",
              "topics": [
                "Examine issues on adolescent behaviour and reproductive health",
              ],
            },
            {
              "subtitle": "SOCIALISATION",
              "topics": [
                "The Place of Socialisation in Developing the Individual",
              ],
            },
            // {
            //   "subtitle": "",
            //   "topics": [
            //     "",
            //   ],
            // },
            {
              "subtitle": "POPULATION",
              "topics": ["COMPONENTS OF POPULATION GROWTH"],
            },
          ],
        },
        {
          "subtitle": "SENSE OF PURPOSE",
          "subStrands": [
            {
              "subtitle": "SELF-IDENTITY",
              "topics": ["Exhibit Knowledge of Self-Identity"],
            },
          ],
        },
        {
          "subtitle": "LAW AND ORDER",
          "subStrands": [
            {
              "subtitle": "CITIZENSHIP AND HUMAN RIGHTS",
              "topics": ["WHAT IT MEANS TO BE A CITIZEN OF GHANA"],
            },
          ],
        },
        {
          "subtitle": "SOCIO-ECONOMIC DEVELOPMENT",
          "subStrands": [
            {
              "subtitle": "HUMAN RESOURCE DEVELOPMENT",
              "topics": ["Developing Human Resource in Ghana"],
            },
            {
              "subtitle": "FINANCIAL AND INVESTMENT ISSUES",
              "topics": ["Examining Social Security in Ghana"],
            },
          ],
        },
      ],
      "Religious & Moral Education": [
        {
          "subtitle": "GOD, HIS CREATION AND ATTRIBUTES",
          "subStrands": [
            {
              "subtitle": "GOD, HIS NATURE AND ATTRIBUTES",
              "topics": [
                "THE NATURE OF GOD THROUGH ATTRIBUTES",
                "DEMONSTRATING GOD'S ATTRIBUTES IN DAILY LIFE",
                "SIMILARITIES IN THE NATURE OF GOD ACROSS RELIGIONS",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGIOUS PRACTICES",
          "subStrands": [
            {
              "subtitle": "WORSHIP",
              "topics": [
                "Identify the Types of Worship",
                "Describe the Modes of Worship",
                "Identify and Explain Moral Lessons",
                "Explain the Significance of Prayer",
              ],
            },
            {
              "subtitle": "RELIGIOUS SONGS AND RECITATIONS",
              "topics": [
                "Religious vs. Non-Religious Songs",
                "Scripture Recitation and Oral Traditions",
                "Moral Values in Religious Songs and Recitations",
              ],
            },
          ],
        },
        {
          "subtitle": "THE FAMILY AND THE COMMUNITY",
          "subStrands": [
            {
              "subtitle": "FAMILY SYSTEMS",
              "topics": [
                "CONCEPT AND TYPES OF FAMILY SYSTEMS",
                "ROLES OF FAMILY MEMBERS",
                "PROMOTING GOOD RELATIONSHIPS",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGIOUS LEADERS AND PERSONALITIES",
          "subStrands": [
            {
              "subtitle": "RELIGIOUS LEADERS",
              "topics": [
                "EARLY LIFE AND CALL",
                "MINISTRIES OF RELIGIOUS LEADERS",
                "MORAL LESSONS",
              ],
            },
          ],
        },
        {
          "subtitle": "ETHICS AND MORAL LIFE",
          "subStrands": [
            {
              "subtitle": "MANNERS AND DECENCY",
              "topics": [
                "Behaviours Considered as Good Manners",
                "Importance of Good Manners and Decency",
                "The Significance of Chastity",
                "Religious Teachings on Manners, Decency, and Chastity",
              ],
            },
            {
              "subtitle": "SUBSTANCE ABUSE",
              "topics": [
                "Summarising the Causes of Substance Abuse",
                "Discussing the Effects of Substance Abuse",
                "Religious Teachings and Defensive Skills",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGION AND ECONOMIC LIFE",
          "subStrands": [
            {
              "subtitle": "WORK, ENTREPRENEURSHIP AND SOCIAL SECURITY",
              "topics": [
                "The Meaning of Work and Entrepreneurship",
                "The Relevance of Work from Religious and Ethical Perspectives",
                "Identifying Steps to Become a Successful Entrepreneur",
                "Justifying the Need to Become an Entrepreneur",
              ],
            },
          ],
        },
      ],
    };

    final Map<String, List<Map<String, dynamic>>> jhs2CourseData = {
      "English": [
        {
          "subtitle": "ORAL LANGUAGE",
          "subStrands": [
            {
              "subtitle": "ADVANCED CONVERSATION",
              "topics": ["Formal Presentations", "Debating Skills"],
            },
            {
              "subtitle": "CRITICAL LISTENING",
              "topics": ["Detecting Bias", "Analyzing Arguments"],
            },
            {
              "subtitle": "PRONUNCIATION",
              "topics": ["Stress and Intonation"],
            },
          ],
        },
        {
          "subtitle": "READING",
          "subStrands": [
            {
              "subtitle": "EXPOSITORY TEXTS",
              "topics": ["Scientific Reports", "Historical Accounts"],
            },
          ],
        },
        {
          "subtitle": "GRAMMAR AND GRAMMAR USAGE",
          "subStrands": [
            {
              "subtitle": "COMPLEX SENTENCES",
              "topics": ["Relative Clauses", "Subordinate Conjunctions"],
            },
          ],
        },
        {
          "subtitle": "WRITING",
          "subStrands": [
            {
              "subtitle": "FUNCTIONAL WRITING",
              "topics": ["Formal Letters", "Minute Writing"],
            },
          ],
        },
        {
          "subtitle": "LITERATURE",
          "subStrands": [
            {
              "subtitle": "POETRY AND DRAMA",
              "topics": ["Analyzing Themes", "Character Development"],
            },
          ],
        },
      ],
      "Science": [
        {
          "subtitle": "DIVERSITY OF MATTER",
          "subStrands": [
            {
              "subtitle": "Elements and Compounds",
              "topics": ["Periodic Table Overview", "Chemical Bonding"],
            },
          ],
        },
        {
          "subtitle": "CYCLES",
          "subStrands": [
            {
              "subtitle": "Water Cycle",
              "topics": ["Evaporation & Condensation"],
            },
          ],
        },
        {
          "subtitle": "SYSTEMS",
          "subStrands": [
            {
              "subtitle": "Digestive System",
              "topics": ["Enzymes & Absorption"],
            },
          ],
        },
        {
          "subtitle": "FORCES AND ENERGY",
          "subStrands": [
            {
              "subtitle": "Energy",
              "topics": ["Forms of Energy", "Conservation"],
            },
          ],
        },
        {
          "subtitle": "HUMANS AND THE ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "Mock Trials",
              "topics": ["Practical Exam Prep"],
            },
          ],
        },
      ],
      "Math": [
        {
          "subtitle": "NUMBER",
          "subStrands": [
            {
              "subtitle": "NUMBER AND NUMERATION SYSTEMS",
              "topics": ["FROM BILLIONS TO STANDARD FORM"],
            },
            {
              "subtitle": "Number Operations",
              "topics": ["The Complete Guide to Number Operations"],
            },
            {
              "subtitle": "Fractions, Decimals and Percentages",
              "topics": [
                "Comprehensive Mastery of Fractions (Extended Edition)"
              ],
            },
            {
              "subtitle": "Number: Ratios and Proportion",
              "topics": ["The Master Class on Ratios, Rates, and Graphs"],
            },
          ],
        },
        {
          "subtitle": "ALGEBRA",
          "subStrands": [
            {
              "subtitle": "PATTERNS AND RELATIONSs",
              "topics": ["The Master Class on Linear Relations"],
            },
            {
              "subtitle": "ALGEBRAIC EXPRESSIONS",
              "topics": ["COMPREHENSIVE SUB-STRAND REVIEW"],
            },
            {
              "subtitle": "Variables and Equations",
              "topics": ["The Power of Inequalities (Master Edition)"],
            },
          ],
        },
        {
          "subtitle": "GEOMETRY AND MEASUREMENT",
          "subStrands": [
            {
              "subtitle": "SHAPES AND SPACE",
              "topics": ["The Master Class of Shapes"],
            },
            {
              "subtitle": "MEASUREMENT",
              "topics": ["From Circles to Triangles"],
            },
            {
              "subtitle": "Position and Transformation",
              "topics": ["The Power of Rotation (Extended Edition)"],
            },
          ],
        },
        {
          "subtitle": "HANDLING DATA",
          "subStrands": [
            {
              "subtitle": "DATA",
              "topics": ["The Data Lifecycle"],
            },
            {
              "subtitle": "CHANCE OR PROBABILITY",
              "topics": [
                "Mastering Independent Events and Probability (Extended Edition)"
              ],
            },
          ],
        },
      ],
      "Social Studies": [
        {
          "subtitle": "ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "ENVIRONMENTAL ISSUES",
              "topics": [
                "Examining Water Pollution as an Environmental Challenge",
                "Examining the Means of Conserving Energy"
              ],
            },
            {
              "subtitle": "MAPPING SKILLS",
              "topics": ["Sketching Maps and Interpreting Landscapes"],
            },
            {
              "subtitle": "UNDERSTANDING OUR NATURAL WORLD",
              "topics": [
                "Assess the significance of weather and climate to the environment"
              ],
            },
          ],
        },
        {
          "subtitle": "FAMILY LIFE",
          "subStrands": [
            {
              "subtitle": "THE FAMILY",
              "topics": [
                "Composition and Functions of the Nuclear and Extended Families",
                "Issues of Inheritance in Ghana"
              ],
            },
            {
              "subtitle": "POPULATION",
              "topics": [
                "Comparing Population Structures",
              ]
            },
          ],
        },
        {
          "subtitle": "SENSE OF PURPOSE",
          "subStrands": [
            {
              "subtitle": "THE INDIVIDUAL AND THE COMMUNITY",
              "topics": [
                "THE ROLE OF THE INDIVIDUAL IN THE COMMUNITY",
                "VOLUNTEERISM AND COMMUNITY DEVELOPMENT"
              ],
            },
          ],
        },
        {
          "subtitle": "LAW AND ORDER",
          "subStrands": [
            {
              "subtitle": "CITIZENSHIP AND HUMAN RIGHTS",
              "topics": ["Importance of Human Rights in Ghanaian Society"],
            },
            {
              "subtitle": "CONFLICT PREVENTION AND MANAGEMENT",
              "topics": ["Preventing and Managing Conflicts in our Community"],
            },
          ],
        },
        {
          "subtitle": "SOCIO-ECONOMIC DEVELOPMENT",
          "subStrands": [
            {
              "subtitle": "Financial and Investment Issues",
              "topics": ["Social Security and Pension Schemes"],
            },
            {
              "subtitle": "TOURISM",
              "topics": ["Assessing the Importance of Tourism to Ghana"],
            },
          ],
        },
        {
          "subtitle": "NATIONHOOD",
          "subStrands": [
            {
              "subtitle": "THE REPUBLICS",
              "topics": [
                "How the First Republic Came into Being",
                "Political developments under the first republic",
                "How the Second Republic Came into Being",
                "Political developments under the second republic",
              ]
            }
          ],
        },
      ],
      "Religious & Moral Education": [
        {
          "subtitle": "GOD, HIS CREATION AND ATTRIBUTES",
          "subStrands": [
            {
              "subtitle":
                  "THE CREATION STORIES OF THE THREE MAJOR RELIGIONS IN GHANA",
              "topics": [
                "THE THREE CREATION STORIES",
                "MORAL VALUES IN THE CREATION STORIES",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGIOUS PRACTICES",
          "subStrands": [
            {
              "subtitle": "RITES OF PASSAGE",
              "topics": [
                "Naming Ceremonies in the Three Major Religions",
                "Physical and Emotional Changes that Characterise Puberty",
                "How Puberty Rites are Performed in Traditional Ghanaian Societies",
                "How Marriage is Contracted in the Three Main Religions",
                "How Death Rites are Performed in the Three Major Religions",
                "Identify and Explain the Moral Lessons in the Rites of Passage",
              ],
            },
          ],
        },
        {
          "subtitle": "THE FAMILY AND THE COMMUNITY",
          "subStrands": [
            {
              "subtitle": "AUTHORITY AND OBEDIENCE",
              "topics": [
                "Sources and Use of Authority",
                "The Need to Obey Authority",
                "Applying Rules and Regulations in Daily Life",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGIOUS LEADERS AND PERSONALITIES",
          "subStrands": [
            {
              "subtitle": "PROPHETS AND CALIPHS",
              "topics": [
                "The Mission of the Prophets",
                "The Mission and Exemplary Lives of the Caliphs",
                "Lessons from the Exemplary Lives of Prophets and Caliphs",
              ],
            },
          ],
        },
        {
          "subtitle": "ETHICS AND MORAL LIFE",
          "subStrands": [
            {
              "subtitle":
                  "MORAL TEACHINGS IN THE THREE MAJOR RELIGIONS IN GHANA",
              "topics": [
                "Identifying Moral Teachings from the Bible, Qur’an, and Oral Traditions",
                "Applying Moral Teachings in Daily Life",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGION AND ECONOMIC LIFE",
          "subStrands": [
            {
              "subtitle": "MONEY",
              "topics": [
                "Definition and Usefulness of Money",
                "Honest Ways of Acquiring Money",
                "Appropriate Ways of Using Money",
                "The SSNIT Pension Scheme",
              ],
            },
            {
              "subtitle": "BRIBERY AND CORRUPTION",
              "topics": [
                "What are Bribery and Corruption?",
                "Causes and Effects of Bribery and Corruption",
              ],
            },
          ],
        },
      ],
    };

    final Map<String, List<Map<String, dynamic>>> jhs3CourseData = {
      "English": [
        {
          "subtitle": "ORAL LANGUAGE",
          "subStrands": [
            {
              "subtitle": "Advanced Speech",
              "topics": ["Public Speaking"],
            },
          ],
        },
        {
          "subtitle": "READING",
          "subStrands": [
            {
              "subtitle": "Literary Analysis",
              "topics": ["Complex Hooks"],
            },
          ],
        },
        {
          "subtitle": "GRAMMAR USAGE",
          "subStrands": [
            {
              "subtitle": "Refining Logic",
              "topics": ["Synthesis"],
            },
          ],
        },
        {
          "subtitle": "WRITING",
          "subStrands": [
            {
              "subtitle": "Essays",
              "topics": ["Argumentative Essays"],
            },
          ],
        },
      ],
      "Science": [
        {
          "subtitle": "DIVERSITY OF MATTER",
          "subStrands": [
            {
              "subtitle": "Acids & Bases",
              "topics": ["pH Scale"],
            },
          ],
        },
        {
          "subtitle": "CYCLES",
          "subStrands": [
            {
              "subtitle": "Nitrogen Cycle",
              "topics": ["Fixation"],
            },
          ],
        },
        {
          "subtitle": "Systems",
          "subStrands": [
            {
              "subtitle": "Excretory",
              "topics": ["Kidneys"],
            },
          ],
        },
        {
          "subtitle": "FORCES AND ENERGY",
          "subStrands": [
            {
              "subtitle": "Magnetism",
              "topics": ["Electromagnets"],
            },
          ],
        },
        {
          "subtitle": "HUMANS AND THE ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "Magnetism",
              "topics": ["Electromagnets"],
            },
          ],
        },
      ],
      "Math": [
        {
          "subtitle": "NUMBER",
          "subStrands": [
            {
              "subtitle": "Number and Numeration System",
              "topics": [
                "Significant Figures, Standard Form, and the Rational Number System"
              ],
            },
            {
              "subtitle": "NUMBER OPERATIONS",
              "topics": ["OPERATIONS ON SURDS"],
            },
            {
              "subtitle": "FRACTIONS, DECIMALS AND PERCENTAGES",
              "topics": ["OPERATIONS ON FRACTIONS AND REAL-WORLD PROBLEMS"],
            },
            {
              "subtitle": "Ratios and Proportions",
              "topics": ["Multi-Step Ratio and Proportional Relationships"],
            },
          ],
        },
        {
          "subtitle": "ALGEBRA",
          "subStrands": [
            {
              "subtitle": "PATTERNS AND RELATIONS",
              "topics": ["Lines on a Graph"],
            },
            {
              "subtitle": "ALGEBRAIC EXPRESSIONS",
              "topics": ["CHANGE OF SUBJECT, SUBSTITUTION, AND FACTORISATION"],
            },
            {
              "subtitle": "Variables and Equations",
              "topics": ["Solving and Graphing Linear Inequalities"],
            },
          ],
        },
        {
          "subtitle": "GEOMETRY AND MEASUREMENT",
          "subStrands": [
            {
              "subtitle": "Shapes and Space",
              "topics": ["Angles, Similarity, and Circles"],
            },
            {
              "subtitle": "MEASUREMENT",
              "topics": ["Prisms and Vectors"],
            },
            {
              "subtitle": "Position and Transformation",
              "topics": ["Understanding Enlargement and Similarity"],
            },
          ],
        },
        {
          "subtitle": "HANDLING DATA",
          "subStrands": [
            {
              "subtitle": "Data",
              "topics": ["Collecting and Organising Data"],
            },
            {
              "subtitle": "Chance or Probability",
              "topics": ["Understanding Dependent Events"],
            },
          ],
        },
      ],
      "Social Studies": [
        {
          "subtitle": "ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "ENVIRONMENTAL ISSUES",
              "topics": [
                "Examine air pollution as an environmental challenge",
                "Assess global sources and the means of conserving energy"
              ],
            },
            {
              "subtitle": "OUR NATURAL AND HUMAN RESOURCES",
              "topics": [
                "Examining the Importance of Natural Resources to the Development of Ghana",
                "Evaluating the Importance of Human Resources to the Development of Ghana"
              ],
            },
          ],
        },
        {
          "subtitle": "FAMILY LIFE",
          "subStrands": [
            {
              "subtitle": "THE FAMILY",
              "topics": [
                "Marriage as a Social Institution in Ghana",
                "Responsible Parenting within the Family System"
              ],
            },
            {
              "subtitle": "POPULATION",
              "topics": ["Population Structure and Development in Ghana"],
            },
          ],
        },
        {
          "subtitle": "SENSE OF PURPOSE",
          "subStrands": [
            {
              "subtitle": "CULTURE AND NATIONAL IDENTITY",
              "topics": ["Symbols, Music, and Ceremonies in National Identity"],
            },
          ],
        },
        {
          "subtitle": "LAW AND ORDER",
          "subStrands": [
            {
              "subtitle": "THE 1992 CONSTITUTION",
              "topics": [
                "Examining the 1992 Constitution and its Significance",
                "The Rights and Responsibilities of the Child"
              ],
            },
            {
              "subtitle": "PEACE AND SECURITY IN OUR NATION",
              "topics": ["THE RELEVANCE OF PEACE AND SECURITY"],
            },
            {
              "subtitle": "PROMOTING DEMOCRACY AND POLITICAL STABILITY",
              "topics": [
                "Elections, Democracy, and Political Stability",
                "The Role of the District Assembly in Promoting Decentralisation",
                "The Significance of Political Stability in National Development"
              ],
            },
          ],
        },
        {
          "subtitle": "SOCIO-ECONOMIC DEVELOPMENT",
          "subStrands": [
            {
              "subtitle": "FINANCIAL AND INVESTMENT ISSUES",
              "topics": ["PENSION RIGHTS"],
            },
            {
              "subtitle": "SCIENCE AND TECHNOLOGY",
              "topics": ["Using Science and Technology for Development"],
            },
          ],
        },
        {
          "subtitle": "NATIONHOOD",
          "subStrands": [
            {
              "subtitle": "THE REPUBLICS",
              "topics": [
                "How the Third Republic Came into Being (1979–1981)",
                "Political Developments under the Third Republic",
                "How the Fourth Republic Came into Being",
                "Political Developments under the Fourth Republic"
              ],
            }
          ],
        },
      ],
      "Religious & Moral Education": [
        {
          "subtitle": "GOD, HIS CREATION AND ATTRIBUTES",
          "subStrands": [
            {
              "subtitle": "THE PURPOSE AND USEFULNESS OF GOD’S CREATION",
              "topics": [
                "Identify the Purpose and Usefulness of God’s Creation",
                "Explain how the complex nature of things created by God reveals His nature",
              ],
            },
            {
              "subtitle": "THE ENVIRONMENT",
              "topics": [
                "Human Activities That Destroy the Environment",
                "Indigenous Ghanaian Culture and Environmental Care",
                "Reasons for Taking Care of the Environment",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGIOUS PRACTICES",
          "subStrands": [
            {
              "subtitle": "RELIGIOUS FESTIVALS",
              "topics": [
                "MEANING AND TYPES OF FESTIVALS",
                "ACTIVITIES IN FESTIVALS",
                "IMPORTANCE OF FESTIVALS AND DAILY LIFE",
              ],
            },
          ],
        },
        {
          "subtitle": "The Family and the Community",
          "subStrands": [
            {
              "subtitle": "Religion and Social Cohesion",
              "topics": [
                "Tolerant and Intolerant Communities",
                "Why Religious Intolerance Occurs And Their Effects on Society and the Individual",
                "WAYS IN WHICH PEOPLE WITH DIVERSE RELIGIOUS BACKGROUNDS CAN LIVE PEACEFULLY",
              ],
            },
          ],
        },
        {
          "subtitle": "Religious Leaders and Personalities",
          "subStrands": [
            {
              "subtitle": "Women in Religion and Leadership Positions",
              "topics": [
                "CONTRIBUTIONS OF KEY WOMEN IN THE THREE MAJOR RELIGIONS",
                "APPLYING MORAL LESSONS FROM THE LIVES OF GREAT WOMEN",
                "CONTRIBUTIONS OF WOMEN TO THE DEVELOPMENT OF GHANA",
              ],
            },
          ],
        },
        {
          "subtitle": "ETHICS AND MORAL LIFE",
          "subStrands": [
            {
              "subtitle": "REWARD, PUNISHMENT, AND REPENTANCE",
              "topics": [
                "GOOD DEEDS AND REWARDS",
                "ACTS ATTRACTING PUNISHMENT",
                "STAGES OF REPENTANCE",
              ],
            },
          ],
        },
        {
          "subtitle": "RELIGION AND ECONOMIC LIFE",
          "subStrands": [
            {
              "subtitle": "TIME AND LEISURE",
              "topics": [
                "Meaning of Time, Leisure, and Idleness",
                "Planning and Using Time Wisely",
                "The Need for Leisure",
              ],
            },
          ],
        },
      ],
    };

    final strandsData = grade == "JHS 2"
        ? (jhs2CourseData[courseTitle] ?? jhs2CourseData["English"]!)
        : grade == "JHS 3"
            ? (jhs3CourseData[courseTitle] ?? jhs3CourseData["English"]!)
            : (courseData[courseTitle] ?? courseData["English"]!);

    final generatedStrands = List.generate(strandsData.length, (sIndex) {
      final isStrandCompleted = false;
      final isStrandLocked = sIndex > 0;
      final currentStrandData = strandsData[sIndex];
      final subStrandsRaw =
          currentStrandData["subStrands"] as List<Map<String, dynamic>>;

      return Strand(
        title: "Strand ${sIndex + 1}",
        subtitle: currentStrandData["subtitle"],
        isCompleted: isStrandCompleted,
        isLocked: isStrandLocked,
        subStrands: subStrandsRaw.map((ssData) {
          final topics = ssData["topics"] as List<String>;
          final ssSubtitle = ssData["subtitle"] as String;
          final ssIndex = subStrandsRaw.indexOf(ssData);

          return SubStrand(
            title: "Sub-Strand ${ssIndex + 1}",
            subtitle: ssSubtitle,
            lessons: topics.asMap().entries.map((entry) {
              final lIndex = entry.key;
              final topicName = entry.value;

              var getReadyData = defaultGetReadyData;
              var learnData = courseTitle == "Math"
                  ? MATHjhs1ss1LearnData
                  : defaultLearnData;
              var practiceData = defaultPracticeData;
              var independentPracticeData = defaultIndependentQuizData;
              var quizData = defaultQuizData;

              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = ss2Lesson1GetReadyData;
                learnData = ss1Lesson2LearnData;
                practiceData = ss1Lesson2PracticeData;
                independentPracticeData = ss1Lesson2IndependentQuizData;
                quizData = ss1Lesson2QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = ss1Lesson2GetReadyData;
                learnData = ss1Lesson2LearnData;
                practiceData = ss1Lesson2PracticeData;
                independentPracticeData = ss1Lesson2IndependentQuizData;
                quizData = ss1Lesson2QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = ss1Lesson3GetReadyData;
                learnData = ss1Lesson3LearnData;
                practiceData = ss1Lesson3PracticeData;
                independentPracticeData = ss1Lesson3IndependentQuizData;
                quizData = ss1Lesson3QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = ss1Lesson4GetReadyData;
                learnData = ss1Lesson4LearnData;
                practiceData = ss1Lesson4PracticeData;
                independentPracticeData = ss1Lesson4IndependentQuizData;
                quizData = ss1Lesson4QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = ss2Lesson1GetReadyData;
                learnData = ss2Lesson1LearnData;
                practiceData = ss2Lesson1PracticeData;
                independentPracticeData = ss2Lesson1IndependentQuizData;
                quizData = ss2Lesson1QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = ss2Lesson2GetReadyData;
                learnData = ss2Lesson2LearnData;
                practiceData = ss2Lesson2PracticeData;
                independentPracticeData = ss2Lesson2IndependentQuizData;
                quizData = ss2Lesson2QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = ss3Lesson1GetReadyData;
                learnData = ss3Lesson1LearnData;
                practiceData = ss3Lesson1PracticeData;
                independentPracticeData = ss3Lesson1IndependentQuizData;
                quizData = ss3Lesson1QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = s2ss1Lesson1GetReadyData;
                learnData = s2ss1Lesson1LearnData;
                practiceData = s2ss1Lesson1PracticeData;
                independentPracticeData = s2ss1Lesson1IndependentQuizData;
                quizData = s2ss1Lesson1QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = s2ss1Lesson2GetReadyData;
                learnData = s2ss1Lesson2LearnData;
                practiceData = s2ss1Lesson2PracticeData;
                independentPracticeData = s2ss1Lesson2IndependentQuizData;
                quizData = s2ss1Lesson2QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = s2ss1Lesson3GetReadyData;
                learnData = s2ss1Lesson3LearnData;
                practiceData = s2ss1Lesson3PracticeData;
                independentPracticeData = s2ss1Lesson3IndependentQuizData;
                quizData = s2ss1Lesson3QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = s2ss2Lesson1GetReadyData;
                learnData = s2ss2Lesson1LearnData;
                practiceData = s2ss2Lesson1PracticeData;
                independentPracticeData = s2ss2Lesson1IndependentQuizData;
                quizData = s2ss2Lesson1QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = s3ss1Lesson1GetReadyData;
                learnData = s3ss1Lesson1LearnData;
                practiceData = s3ss1Lesson1PracticeData;
                independentPracticeData = s3ss1Lesson1IndependentQuizData;
                quizData = s3ss1Lesson1QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = s3ss1Lesson2GetReadyData;
                learnData = s3ss1Lesson2LearnData;
                practiceData = s3ss1Lesson2PracticeData;
                independentPracticeData = s3ss1Lesson2IndependentQuizData;
                quizData = s3ss1Lesson2QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = s3ss1Lesson3GetReadyData;
                learnData = s3ss1Lesson3LearnData;
                practiceData = s3ss1Lesson3PracticeData;
                independentPracticeData = s3ss1Lesson3IndependentQuizData;
                quizData = s3ss1Lesson3QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = s3ss1Lesson4GetReadyData;
                learnData = s3ss1Lesson4LearnData;
                practiceData = s3ss1Lesson4PracticeData;
                independentPracticeData = s3ss1Lesson4IndependentQuizData;
                quizData = s3ss1Lesson4QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = s3ss1Lesson5GetReadyData;
                learnData = s3ss1Lesson5LearnData;
                practiceData = s3ss1Lesson5PracticeData;
                independentPracticeData = s3ss1Lesson5IndependentQuizData;
                quizData = s3ss1Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs3s1ss1Lesson1GetReadyData;
                learnData = jhs3s1ss1Lesson1LearnData;
                practiceData = jhs3s1ss1Lesson1PracticeData;
                independentPracticeData = jhs3s1ss1Lesson1IndependentQuizData;
                quizData = jhs3s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs3s1ss1Lesson2GetReadyData;
                learnData = jhs3s1ss1Lesson2LearnData;
                practiceData = jhs3s1ss1Lesson2PracticeData;
                independentPracticeData = jhs3s1ss1Lesson2IndependentQuizData;
                quizData = jhs3s1ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = jhs3s1ss2Lesson1GetReadyData;
                learnData = jhs3s1ss2Lesson1LearnData;
                practiceData = jhs3s1ss2Lesson1PracticeData;
                independentPracticeData = jhs3s1ss2Lesson1IndependentQuizData;
                quizData = jhs3s1ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = jhs3s1ss3Lesson1GetReadyData;
                learnData = jhs3s1ss3Lesson1LearnData;
                practiceData = jhs3s1ss3Lesson1PracticeData;
                independentPracticeData = jhs3s1ss3Lesson1IndependentQuizData;
                quizData = jhs3s1ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = jhs3s1ss3Lesson2GetReadyData;
                learnData = jhs3s1ss3Lesson2LearnData;
                practiceData = jhs3s1ss3Lesson2PracticeData;
                independentPracticeData = jhs3s1ss3Lesson2IndependentQuizData;
                quizData = jhs3s1ss3Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs2s1ss1Lesson1GetReadyData;
                learnData = jhs2s1ss1Lesson1LearnData;
                practiceData = jhs2s1ss1Lesson1PracticeData;
                independentPracticeData = jhs2s1ss1Lesson1IndependentQuizData;
                quizData = jhs2s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs2s1ss1Lesson2GetReadyData;
                learnData = jhs2s1ss1Lesson2LearnData;
                practiceData = jhs2s1ss1Lesson2PracticeData;
                independentPracticeData = jhs2s1ss1Lesson2IndependentQuizData;
                quizData = jhs2s1ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs2s1ss1Lesson3GetReadyData;
                learnData = jhs2s1ss1Lesson3LearnData;
                practiceData = jhs2s1ss1Lesson3PracticeData;
                independentPracticeData = jhs2s1ss1Lesson3IndependentQuizData;
                quizData = jhs2s1ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = jhs2s1ss1Lesson4GetReadyData;
                learnData = jhs2s1ss1Lesson4LearnData;
                practiceData = jhs2s1ss1Lesson4PracticeData;
                independentPracticeData = jhs2s1ss1Lesson4IndependentQuizData;
                quizData = jhs2s1ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = jhs2s1ss1Lesson5GetReadyData;
                learnData = jhs2s1ss1Lesson5LearnData;
                practiceData = jhs2s1ss1Lesson5PracticeData;
                independentPracticeData = jhs2s1ss1Lesson5IndependentQuizData;
                quizData = jhs2s1ss1Lesson5QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = jhs2s1ss2Lesson1GetReadyData;
                learnData = jhs2s1ss2Lesson1LearnData;
                practiceData = jhs2s1ss2Lesson1PracticeData;
                independentPracticeData = jhs2s1ss2Lesson1IndependentQuizData;
                quizData = jhs2s1ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = jhs2s1ss3Lesson1GetReadyData;
                learnData = jhs2s1ss3Lesson1LearnData;
                practiceData = jhs2s1ss3Lesson1PracticeData;
                independentPracticeData = jhs2s1ss3Lesson1IndependentQuizData;
                quizData = jhs2s1ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = jhs2s1ss3Lesson2GetReadyData;
                learnData = jhs2s1ss3Lesson2LearnData;
                practiceData = jhs2s1ss3Lesson2PracticeData;
                independentPracticeData = jhs2s1ss3Lesson2IndependentQuizData;
                quizData = jhs2s1ss3Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = jhs2s1ss3Lesson3GetReadyData;
                learnData = jhs2s1ss3Lesson3LearnData;
                practiceData = jhs2s1ss3Lesson3PracticeData;
                independentPracticeData = jhs2s1ss3Lesson3IndependentQuizData;
                quizData = jhs2s1ss3Lesson3QuizData;
              }

              // if (courseTitle == "English" &&
              //     sIndex == 2 &&
              //     ssIndex == 0 &&
              //     lIndex == 1) {
              //   getReadyData = s3ss1Lesson2GetReadyData;
              //   learnData = s3ss1Lesson2LearnData;
              //   practiceData = s3ss1Lesson2PracticeData;
              //   independentPracticeData = s3ss1Lesson2IndependentQuizData;
              //   quizData = s3ss1Lesson2QuizData;
              // }
              //
              // if (courseTitle == "English" &&
              //     sIndex == 1 &&
              //     ssIndex == 0 &&
              //     lIndex == 2) {
              //   getReadyData = s2ss1Lesson3GetReadyData;
              //   learnData = s2ss1Lesson3LearnData;
              //   practiceData = s2ss1Lesson3PracticeData;
              //   independentPracticeData = s2ss1Lesson3IndependentQuizData;
              //   quizData = s2ss1Lesson3QuizData;
              // }

              if (courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s1ss1Lesson1GetReadyData;
                learnData = Scijh1s1ss1Lesson1LearnData;
                practiceData = Scijhs1s1ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s1ss1Lesson1IndependentQuizData;
                quizData = Scijhs1s1ss1Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s1ss1Lesson2GetReadyData;
                learnData = Scijh1s1ss1Lesson2LearnData;
                practiceData = Scijhs1s1ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s1ss1Lesson2IndependentQuizData;
                quizData = Scijhs1s1ss1Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s1ss1Lesson3GetReadyData;
                learnData = Scijh1s1ss1Lesson3LearnData;
                practiceData = Scijhs1s1ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s1ss1Lesson3IndependentQuizData;
                quizData = Scijhs1s1ss1Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS1s1ss1Lesson4GetReadyData;
                learnData = Scijh1s1ss1Lesson4LearnData;
                practiceData = Scijhs1s1ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs1s1ss1Lesson4IndependentQuizData;
                quizData = Scijhs1s1ss1Lesson4QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s1ss2Lesson1GetReadyData;
                learnData = Scijh1s1ss2Lesson1LearnData;
                practiceData = Scijhs1s1ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s1ss2Lesson1IndependentQuizData;
                quizData = Scijhs1s1ss2Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s1ss2Lesson2GetReadyData;
                learnData = Scijh1s1ss2Lesson2LearnData;
                practiceData = Scijhs1s1ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s1ss2Lesson2IndependentQuizData;
                quizData = Scijhs1s1ss2Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s1ss1Lesson1GetReadyData;
                learnData = Scijh2s1ss1Lesson1LearnData;
                practiceData = Scijhs2s1ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s1ss1Lesson1IndependentQuizData;
                quizData = Scijhs2s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s1ss1Lesson2GetReadyData;
                learnData = Scijh2s1ss1Lesson2LearnData;
                practiceData = Scijhs2s1ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s1ss1Lesson2IndependentQuizData;
                quizData = Scijhs2s1ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s1ss1Lesson3GetReadyData;
                learnData = Scijh2s1ss1Lesson3LearnData;
                practiceData = Scijhs2s1ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s1ss1Lesson3IndependentQuizData;
                quizData = Scijhs2s1ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS2s1ss1Lesson4GetReadyData;
                learnData = Scijh2s1ss1Lesson4LearnData;
                practiceData = Scijhs2s1ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs2s1ss1Lesson4IndependentQuizData;
                quizData = Scijhs2s1ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s1ss2Lesson1GetReadyData;
                learnData = Scijh2s1ss2Lesson1LearnData;
                practiceData = Scijhs2s1ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s1ss2Lesson1IndependentQuizData;
                quizData = Scijhs2s1ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s1ss2Lesson2GetReadyData;
                learnData = Scijh2s1ss2Lesson2LearnData;
                practiceData = Scijhs2s1ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s1ss2Lesson2IndependentQuizData;
                quizData = Scijhs2s1ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s1ss1Lesson1GetReadyData;
                learnData = Scijh3s1ss1Lesson1LearnData;
                practiceData = Scijhs3s1ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s1ss1Lesson1IndependentQuizData;
                quizData = Scijhs3s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s1ss1Lesson2GetReadyData;
                learnData = Scijh3s1ss1Lesson2LearnData;
                practiceData = Scijhs3s1ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s1ss1Lesson2IndependentQuizData;
                quizData = Scijhs3s1ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s1ss1Lesson3GetReadyData;
                learnData = Scijh3s1ss1Lesson3LearnData;
                practiceData = Scijhs3s1ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s1ss1Lesson3IndependentQuizData;
                quizData = Scijhs3s1ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS3s1ss1Lesson4GetReadyData;
                learnData = Scijh3s1ss1Lesson4LearnData;
                practiceData = Scijhs3s1ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs3s1ss1Lesson4IndependentQuizData;
                quizData = Scijhs3s1ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s1ss2Lesson1GetReadyData;
                learnData = Scijh3s1ss2Lesson1LearnData;
                practiceData = Scijhs3s1ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s1ss2Lesson1IndependentQuizData;
                quizData = Scijhs3s1ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s1ss2Lesson2GetReadyData;
                learnData = Scijh3s1ss2Lesson2LearnData;
                practiceData = Scijhs3s1ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s1ss2Lesson2IndependentQuizData;
                quizData = Scijhs3s1ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s1ss2Lesson3GetReadyData;
                learnData = Scijh3s1ss2Lesson3LearnData;
                practiceData = Scijhs3s1ss2Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s1ss2Lesson3IndependentQuizData;
                quizData = Scijhs3s1ss2Lesson3QuizData;
              }

              if (courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s1ss1GetReadyData;
                learnData = MATHjhs1ss1LearnData;
                practiceData = MATHjhs1s1ss1PracticeData;
                independentPracticeData = MATHjhs1s1ss1IndependentQuizData;
                quizData = MATHjhs1s1ss1QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s1ss2GetReadyData;
                learnData = MATHjhs1ss2LearnData;
                practiceData = MATHjhs1s1ss2PracticeData;
                independentPracticeData = MATHjhs1s1ss2IndependentQuizData;
                quizData = MATHjhs1s1ss2QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s1ss3GetReadyData;
                learnData = MATHjhs1ss3LearnData;
                practiceData = MATHjhs1s1ss3PracticeData;
                independentPracticeData = MATHjhs1s1ss3IndependentQuizData;
                quizData = MATHjhs1s1ss3QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s1ss4GetReadyData;
                learnData = MATHjhs1ss4LearnData;
                practiceData = MATHjhs1s1ss4PracticeData;
                independentPracticeData = MATHjhs1s1ss4IndependentQuizData;
                quizData = MATHjhs1s1ss4QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s2ss1GetReadyData;
                learnData = MATHjhs1s2ss1LearnData;
                practiceData = MATHjhs1s2ss1PracticeData;
                independentPracticeData = MATHjhs1s2ss1IndependentQuizData;
                quizData = MATHjhs1s2ss1QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s2ss2GetReadyData;
                learnData = MATHjhs1s2ss2LearnData;
                practiceData = MATHjhs1s2ss2PracticeData;
                independentPracticeData = MATHjhs1s2ss2IndependentQuizData;
                quizData = MATHjhs1s2ss2QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s2ss3GetReadyData;
                learnData = MATHjhs1s2ss3LearnData;
                practiceData = MATHjhs1s2ss3PracticeData;
                independentPracticeData = MATHjhs1s2ss3IndependentQuizData;
                quizData = MATHjhs1s2ss3QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s3ss1GetReadyData;
                learnData = MATHjhs1s3ss1LearnData;
                practiceData = MATHjhs1s3ss1PracticeData;
                independentPracticeData = MATHjhs1s3ss1IndependentQuizData;
                quizData = MATHjhs1s3ss1QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s3ss2GetReadyData;
                learnData = MATHjhs1s3ss2LearnData;
                practiceData = MATHjhs1s3ss2PracticeData;
                independentPracticeData = MATHjhs1s3ss2IndependentQuizData;
                quizData = MATHjhs1s3ss2QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s3ss3GetReadyData;
                learnData = MATHjhs1s3ss3LearnData;
                practiceData = MATHjhs1s3ss3PracticeData;
                independentPracticeData = MATHjhs1s3ss3IndependentQuizData;
                quizData = MATHjhs1s3ss3QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s4ss1GetReadyData;
                learnData = MATHjhs1s4ss1LearnData;
                practiceData = MATHjhs1s4ss1PracticeData;
                independentPracticeData = MATHjhs1s4ss1IndependentQuizData;
                quizData = MATHjhs1s4ss1QuizData;
              }
              if (courseTitle == "Math" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS1s4ss2GetReadyData;
                learnData = MATHjhs1s4ss2LearnData;
                practiceData = MATHjhs1s4ss2PracticeData;
                independentPracticeData = MATHjhs1s4ss2IndependentQuizData;
                quizData = MATHjhs1s4ss2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s1ss1GetReadyData;
                learnData = MATHjhs2s1ss1LearnData;
                practiceData = MATHjhs2s1ss1PracticeData;
                independentPracticeData = MATHjhs2s1ss1IndependentQuizData;
                quizData = MATHjhs2s1ss1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s1ss2GetReadyData;
                learnData = MATHjhs2s1ss2LearnData;
                practiceData = MATHjhs2s1ss2PracticeData;
                independentPracticeData = MATHjhs2s1ss2IndependentQuizData;
                quizData = MATHjhs2s1ss2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s1ss3GetReadyData;
                learnData = MATHjhs2s1ss3LearnData;
                practiceData = MATHjhs2s1ss3PracticeData;
                independentPracticeData = MATHjhs2s1ss3IndependentQuizData;
                quizData = MATHjhs2s1ss3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s1ss4GetReadyData;
                learnData = MATHjhs2s1ss4LearnData;
                practiceData = MATHjhs2s1ss4PracticeData;
                independentPracticeData = MATHjhs2s1ss4IndependentQuizData;
                quizData = MATHjhs2s1ss4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s2ss1GetReadyData;
                learnData = MATHjhs2s2ss1LearnData;
                practiceData = MATHjhs2s2ss1PracticeData;
                independentPracticeData = MATHjhs2s2ss1IndependentQuizData;
                quizData = MATHjhs2s2ss1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s2ss2GetReadyData;
                learnData = MATHjhs2s2ss2LearnData;
                practiceData = MATHjhs2s2ss2PracticeData;
                independentPracticeData = MATHjhs2s2ss2IndependentQuizData;
                quizData = MATHjhs2s2ss2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s2ss3GetReadyData;
                learnData = MATHjhs2s2ss3LearnData;
                practiceData = MATHjhs2s2ss3PracticeData;
                independentPracticeData = MATHjhs2s2ss3IndependentQuizData;
                quizData = MATHjhs2s2ss3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s3ss1GetReadyData;
                learnData = MATHjhs2s3ss1LearnData;
                practiceData = MATHjhs2s3ss1PracticeData;
                independentPracticeData = MATHjhs2s3ss1IndependentQuizData;
                quizData = MATHjhs2s3ss1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s3ss2GetReadyData;
                learnData = MATHjhs2s3ss2LearnData;
                practiceData = MATHjhs2s3ss2PracticeData;
                independentPracticeData = MATHjhs2s3ss2IndependentQuizData;
                quizData = MATHjhs2s3ss2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s3ss3GetReadyData;
                learnData = MATHjhs2s3ss3LearnData;
                practiceData = MATHjhs2s3ss3PracticeData;
                independentPracticeData = MATHjhs2s3ss3IndependentQuizData;
                quizData = MATHjhs2s3ss3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s4ss1GetReadyData;
                learnData = MATHjhs2s4ss1LearnData;
                practiceData = MATHjhs2s4ss1PracticeData;
                independentPracticeData = MATHjhs2s4ss1IndependentQuizData;
                quizData = MATHjhs2s4ss1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Math" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS2s4ss2GetReadyData;
                learnData = MATHjhs2s4ss2LearnData;
                practiceData = MATHjhs2s4ss2PracticeData;
                independentPracticeData = MATHjhs2s4ss2IndependentQuizData;
                quizData = MATHjhs2s4ss2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s1ss1GetReadyData;
                learnData = MATHjhs3s1ss1LearnData;
                practiceData = MATHjhs3s1ss1PracticeData;
                independentPracticeData = MATHjhs3s1ss1IndependentQuizData;
                quizData = MATHjhs3s1ss1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s1ss2GetReadyData;
                learnData = MATHjhs3s1ss2LearnData;
                practiceData = MATHjhs3s1ss2PracticeData;
                independentPracticeData = MATHjhs3s1ss2IndependentQuizData;
                quizData = MATHjhs3s1ss2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s1ss3GetReadyData;
                learnData = MATHjhs3s1ss3LearnData;
                practiceData = MATHjhs3s1ss3PracticeData;
                independentPracticeData = MATHjhs3s1ss3IndependentQuizData;
                quizData = MATHjhs3s1ss3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 0 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s1ss4GetReadyData;
                learnData = MATHjhs3s1ss4LearnData;
                practiceData = MATHjhs3s1ss4PracticeData;
                independentPracticeData = MATHjhs3s1ss4IndependentQuizData;
                quizData = MATHjhs3s1ss4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s2ss1GetReadyData;
                learnData = MATHjhs3s2ss1LearnData;
                practiceData = MATHjhs3s2ss1PracticeData;
                independentPracticeData = MATHjhs3s2ss1IndependentQuizData;
                quizData = MATHjhs3s2ss1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s2ss2GetReadyData;
                learnData = MATHjhs3s2ss2LearnData;
                practiceData = MATHjhs3s2ss2PracticeData;
                independentPracticeData = MATHjhs3s2ss2IndependentQuizData;
                quizData = MATHjhs3s2ss2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s2ss3GetReadyData;
                learnData = MATHjhs3s2ss3LearnData;
                practiceData = MATHjhs3s2ss3PracticeData;
                independentPracticeData = MATHjhs3s2ss3IndependentQuizData;
                quizData = MATHjhs3s2ss3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s3ss1GetReadyData;
                learnData = MATHjhs3s3ss1LearnData;
                practiceData = MATHjhs3s3ss1PracticeData;
                independentPracticeData = MATHjhs3s3ss1IndependentQuizData;
                quizData = MATHjhs3s3ss1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s3ss2GetReadyData;
                learnData = MATHjhs3s3ss2LearnData;
                practiceData = MATHjhs3s3ss2PracticeData;
                independentPracticeData = MATHjhs3s3ss2IndependentQuizData;
                quizData = MATHjhs3s3ss2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s3ss3GetReadyData;
                learnData = MATHjhs3s3ss3LearnData;
                practiceData = MATHjhs3s3ss3PracticeData;
                independentPracticeData = MATHjhs3s3ss3IndependentQuizData;
                quizData = MATHjhs3s3ss3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s4ss1GetReadyData;
                learnData = MATHjhs3s4ss1LearnData;
                practiceData = MATHjhs3s4ss1PracticeData;
                independentPracticeData = MATHjhs3s4ss1IndependentQuizData;
                quizData = MATHjhs3s4ss1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Math" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = MATHJHS3s4ss2GetReadyData;
                learnData = MATHjhs3s4ss2LearnData;
                practiceData = MATHjhs3s4ss2PracticeData;
                independentPracticeData = MATHjhs3s4ss2IndependentQuizData;
                quizData = MATHjhs3s4ss2QuizData;
              }

              if (courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s1ss1Lesson1GetReadyData;
                learnData = SSjhs1s1ss1Lesson1LearnData;
                practiceData = SSjhs1s1ss1Lesson1PracticeData;
                independentPracticeData = SSjhs1s1ss1Lesson1IndependentQuizData;
                quizData = SSjhs1s1ss1Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS1s1ss1Lesson2GetReadyData;
                learnData = SSjhs1s1ss1Lesson2LearnData;
                practiceData = SSjhs1s1ss1Lesson2PracticeData;
                independentPracticeData = SSjhs1s1ss1Lesson2IndependentQuizData;
                quizData = SSjhs1s1ss1Lesson2QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s1ss2Lesson1GetReadyData;
                learnData = SSjhs1s1ss2Lesson1LearnData;
                practiceData = SSjhs1s1ss2Lesson1PracticeData;
                independentPracticeData = SSjhs1s1ss2Lesson1IndependentQuizData;
                quizData = SSjhs1s1ss2Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s1ss3Lesson1GetReadyData;
                learnData = SSjhs1s1ss3Lesson1LearnData;
                practiceData = SSjhs1s1ss3Lesson1PracticeData;
                independentPracticeData = SSjhs1s1ss3Lesson1IndependentQuizData;
                quizData = SSjhs1s1ss3Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SSJHS1s1ss3Lesson2GetReadyData;
                learnData = SSjhs1s1ss3Lesson2LearnData;
                practiceData = SSjhs1s1ss3Lesson2PracticeData;
                independentPracticeData = SSjhs1s1ss3Lesson2IndependentQuizData;
                quizData = SSjhs1s1ss3Lesson2QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s2ss1Lesson1GetReadyData;
                learnData = SSjhs1s2ss1Lesson1LearnData;
                practiceData = SSjhs1s2ss1Lesson1PracticeData;
                independentPracticeData = SSjhs1s2ss1Lesson1IndependentQuizData;
                quizData = SSjhs1s2ss1Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s2ss2Lesson1GetReadyData;
                learnData = SSjhs1s2ss2Lesson1LearnData;
                practiceData = SSjhs1s2ss2Lesson1PracticeData;
                independentPracticeData = SSjhs1s2ss2Lesson1IndependentQuizData;
                quizData = SSjhs1s2ss2Lesson1QuizData;
              }

              if (courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s2ss4Lesson1GetReadyData;
                learnData = SSjhs1s2ss4Lesson1LearnData;
                practiceData = SSjhs1s2ss4Lesson1PracticeData;
                independentPracticeData = SSjhs1s2ss4Lesson1IndependentQuizData;
                quizData = SSjhs1s2ss4Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s3ss1Lesson1GetReadyData;
                learnData = SSjhs1s3ss1Lesson1LearnData;
                practiceData = SSjhs1s3ss1Lesson1PracticeData;
                independentPracticeData = SSjhs1s3ss1Lesson1IndependentQuizData;
                quizData = SSjhs1s3ss1Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s4ss1Lesson1GetReadyData;
                learnData = SSjhs1s4ss1Lesson1LearnData;
                practiceData = SSjhs1s4ss1Lesson1PracticeData;
                independentPracticeData = SSjhs1s4ss1Lesson1IndependentQuizData;
                quizData = SSjhs1s4ss1Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s5ss1Lesson1GetReadyData;
                learnData = SSjhs1s5ss1Lesson1LearnData;
                practiceData = SSjhs1s5ss1Lesson1PracticeData;
                independentPracticeData = SSjhs1s5ss1Lesson1IndependentQuizData;
                quizData = SSjhs1s5ss1Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s5ss2Lesson1GetReadyData;
                learnData = SSjhs1s5ss2Lesson1LearnData;
                practiceData = SSjhs1s5ss2Lesson1PracticeData;
                independentPracticeData = SSjhs1s5ss2Lesson1IndependentQuizData;
                quizData = SSjhs1s5ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s1ss1Lesson1GetReadyData;
                learnData = SSjhs2s1ss1Lesson1LearnData;
                practiceData = SSjhs2s1ss1Lesson1PracticeData;
                independentPracticeData = SSjhs2s1ss1Lesson1IndependentQuizData;
                quizData = SSjhs2s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS2s1ss1Lesson2GetReadyData;
                learnData = SSjhs2s1ss1Lesson2LearnData;
                practiceData = SSjhs2s1ss1Lesson2PracticeData;
                independentPracticeData = SSjhs2s1ss1Lesson2IndependentQuizData;
                quizData = SSjhs2s1ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s1ss2Lesson1GetReadyData;
                learnData = SSjhs2s1ss2Lesson1LearnData;
                practiceData = SSjhs2s1ss2Lesson1PracticeData;
                independentPracticeData = SSjhs2s1ss2Lesson1IndependentQuizData;
                quizData = SSjhs2s1ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s1ss3Lesson1GetReadyData;
                learnData = SSjhs2s1ss3Lesson1LearnData;
                practiceData = SSjhs2s1ss3Lesson1PracticeData;
                independentPracticeData = SSjhs2s1ss3Lesson1IndependentQuizData;
                quizData = SSjhs2s1ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s2ss1Lesson1GetReadyData;
                learnData = SSjhs2s2ss1Lesson1LearnData;
                practiceData = SSjhs2s2ss1Lesson1PracticeData;
                independentPracticeData = SSjhs2s2ss1Lesson1IndependentQuizData;
                quizData = SSjhs2s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS2s2ss1Lesson2GetReadyData;
                learnData = SSjhs2s2ss1Lesson2LearnData;
                practiceData = SSjhs2s2ss1Lesson2PracticeData;
                independentPracticeData = SSjhs2s2ss1Lesson2IndependentQuizData;
                quizData = SSjhs2s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s2ss2Lesson1GetReadyData;
                learnData = SSjhs2s2ss2Lesson1LearnData;
                practiceData = SSjhs2s2ss2Lesson1PracticeData;
                independentPracticeData = SSjhs2s2ss2Lesson1IndependentQuizData;
                quizData = SSjhs2s2ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s3ss1Lesson1GetReadyData;
                learnData = SSjhs2s3ss1Lesson1LearnData;
                practiceData = SSjhs2s3ss1Lesson1PracticeData;
                independentPracticeData = SSjhs2s3ss1Lesson1IndependentQuizData;
                quizData = SSjhs2s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS2s3ss1Lesson2GetReadyData;
                learnData = SSjhs2s3ss1Lesson2LearnData;
                practiceData = SSjhs2s3ss1Lesson2PracticeData;
                independentPracticeData = SSjhs2s3ss1Lesson2IndependentQuizData;
                quizData = SSjhs2s3ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s4ss1Lesson1GetReadyData;
                learnData = SSjhs2s4ss1Lesson1LearnData;
                practiceData = SSjhs2s4ss1Lesson1PracticeData;
                independentPracticeData = SSjhs2s4ss1Lesson1IndependentQuizData;
                quizData = SSjhs2s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s4ss2Lesson1GetReadyData;
                learnData = SSjhs2s4ss2Lesson1LearnData;
                practiceData = SSjhs2s4ss2Lesson1PracticeData;
                independentPracticeData = SSjhs2s4ss2Lesson1IndependentQuizData;
                quizData = SSjhs2s4ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s5ss1Lesson1GetReadyData;
                learnData = SSjhs2s5ss1Lesson1LearnData;
                practiceData = SSjhs2s5ss1Lesson1PracticeData;
                independentPracticeData = SSjhs2s5ss1Lesson1IndependentQuizData;
                quizData = SSjhs2s5ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s5ss2Lesson1GetReadyData;
                learnData = SSjhs2s5ss2Lesson1LearnData;
                practiceData = SSjhs2s5ss2Lesson1PracticeData;
                independentPracticeData = SSjhs2s5ss2Lesson1IndependentQuizData;
                quizData = SSjhs2s5ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS2s6ss1Lesson1GetReadyData;
                learnData = SSjhs2s6ss1Lesson1LearnData;
                practiceData = SSjhs2s6ss1Lesson1PracticeData;
                independentPracticeData = SSjhs2s6ss1Lesson1IndependentQuizData;
                quizData = SSjhs2s6ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS2s6ss1Lesson2GetReadyData;
                learnData = SSjhs2s6ss1Lesson2LearnData;
                practiceData = SSjhs2s6ss1Lesson2PracticeData;
                independentPracticeData = SSjhs2s6ss1Lesson2IndependentQuizData;
                quizData = SSjhs2s6ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS2s6ss1Lesson3GetReadyData;
                learnData = SSjhs2s6ss1Lesson3LearnData;
                practiceData = SSjhs2s6ss1Lesson3PracticeData;
                independentPracticeData = SSjhs2s6ss1Lesson3IndependentQuizData;
                quizData = SSjhs2s6ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS2s6ss1Lesson4GetReadyData;
                learnData = SSjhs2s6ss1Lesson4LearnData;
                practiceData = SSjhs2s6ss1Lesson4PracticeData;
                independentPracticeData = SSjhs2s6ss1Lesson4IndependentQuizData;
                quizData = SSjhs2s6ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s1ss1Lesson1GetReadyData;
                learnData = SSjhs3s1ss1Lesson1LearnData;
                practiceData = SSjhs3s1ss1Lesson1PracticeData;
                independentPracticeData = SSjhs3s1ss1Lesson1IndependentQuizData;
                quizData = SSjhs3s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS3s1ss1Lesson2GetReadyData;
                learnData = SSjhs3s1ss1Lesson2LearnData;
                practiceData = SSjhs3s1ss1Lesson2PracticeData;
                independentPracticeData = SSjhs3s1ss1Lesson2IndependentQuizData;
                quizData = SSjhs3s1ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s1ss2Lesson1GetReadyData;
                learnData = SSjhs3s1ss2Lesson1LearnData;
                practiceData = SSjhs3s1ss2Lesson1PracticeData;
                independentPracticeData = SSjhs3s1ss2Lesson1IndependentQuizData;
                quizData = SSjhs3s1ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SSJHS3s1ss2Lesson2GetReadyData;
                learnData = SSjhs3s1ss2Lesson2LearnData;
                practiceData = SSjhs3s1ss2Lesson2PracticeData;
                independentPracticeData = SSjhs3s1ss2Lesson2IndependentQuizData;
                quizData = SSjhs3s1ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s2ss1Lesson1GetReadyData;
                learnData = SSjhs3s2ss1Lesson1LearnData;
                practiceData = SSjhs3s2ss1Lesson1PracticeData;
                independentPracticeData = SSjhs3s2ss1Lesson1IndependentQuizData;
                quizData = SSjhs3s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS3s2ss1Lesson2GetReadyData;
                learnData = SSjhs3s2ss1Lesson2LearnData;
                practiceData = SSjhs3s2ss1Lesson2PracticeData;
                independentPracticeData = SSjhs3s2ss1Lesson2IndependentQuizData;
                quizData = SSjhs3s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s2ss2Lesson1GetReadyData;
                learnData = SSjhs3s2ss2Lesson1LearnData;
                practiceData = SSjhs3s2ss2Lesson1PracticeData;
                independentPracticeData = SSjhs3s2ss2Lesson1IndependentQuizData;
                quizData = SSjhs3s2ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s3ss1Lesson1GetReadyData;
                learnData = SSjhs3s3ss1Lesson1LearnData;
                practiceData = SSjhs3s3ss1Lesson1PracticeData;
                independentPracticeData = SSjhs3s3ss1Lesson1IndependentQuizData;
                quizData = SSjhs3s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s4ss1Lesson1GetReadyData;
                learnData = SSjhs3s4ss1Lesson1LearnData;
                practiceData = SSjhs3s4ss1Lesson1PracticeData;
                independentPracticeData = SSjhs3s4ss1Lesson1IndependentQuizData;
                quizData = SSjhs3s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS3s4ss1Lesson2GetReadyData;
                learnData = SSjhs3s4ss1Lesson2LearnData;
                practiceData = SSjhs3s4ss1Lesson2PracticeData;
                independentPracticeData = SSjhs3s4ss1Lesson2IndependentQuizData;
                quizData = SSjhs3s4ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s4ss2Lesson1GetReadyData;
                learnData = SSjhs3s4ss2Lesson1LearnData;
                practiceData = SSjhs3s4ss2Lesson1PracticeData;
                independentPracticeData = SSjhs3s4ss2Lesson1IndependentQuizData;
                quizData = SSjhs3s4ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s4ss3Lesson1GetReadyData;
                learnData = SSjhs3s4ss3Lesson1LearnData;
                practiceData = SSjhs3s4ss3Lesson1PracticeData;
                independentPracticeData = SSjhs3s4ss3Lesson1IndependentQuizData;
                quizData = SSjhs3s4ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SSJHS3s4ss3Lesson2GetReadyData;
                learnData = SSjhs3s4ss3Lesson2LearnData;
                practiceData = SSjhs3s4ss3Lesson2PracticeData;
                independentPracticeData = SSjhs3s4ss3Lesson2IndependentQuizData;
                quizData = SSjhs3s4ss3Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = SSJHS3s4ss3Lesson3GetReadyData;
                learnData = SSjhs3s4ss3Lesson3LearnData;
                practiceData = SSjhs3s4ss3Lesson3PracticeData;
                independentPracticeData = SSjhs3s4ss3Lesson3IndependentQuizData;
                quizData = SSjhs3s4ss3Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s5ss1Lesson1GetReadyData;
                learnData = SSjhs3s5ss1Lesson1LearnData;
                practiceData = SSjhs3s5ss1Lesson1PracticeData;
                independentPracticeData = SSjhs3s5ss1Lesson1IndependentQuizData;
                quizData = SSjhs3s5ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s5ss2Lesson1GetReadyData;
                learnData = SSjhs3s5ss2Lesson1LearnData;
                practiceData = SSjhs3s5ss2Lesson1PracticeData;
                independentPracticeData = SSjhs3s5ss2Lesson1IndependentQuizData;
                quizData = SSjhs3s5ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS3s6ss1Lesson1GetReadyData;
                learnData = SSjhs3s6ss1Lesson1LearnData;
                practiceData = SSjhs3s6ss1Lesson1PracticeData;
                independentPracticeData = SSjhs3s6ss1Lesson1IndependentQuizData;
                quizData = SSjhs3s6ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS3s6ss1Lesson2GetReadyData;
                learnData = SSjhs3s6ss1Lesson2LearnData;
                practiceData = SSjhs3s6ss1Lesson2PracticeData;
                independentPracticeData = SSjhs3s6ss1Lesson2IndependentQuizData;
                quizData = SSjhs3s6ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SSJHS3s6ss1Lesson3GetReadyData;
                learnData = SSjhs3s6ss1Lesson3LearnData;
                practiceData = SSjhs3s6ss1Lesson3PracticeData;
                independentPracticeData = SSjhs3s6ss1Lesson3IndependentQuizData;
                quizData = SSjhs3s6ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SSJHS3s6ss1Lesson4GetReadyData;
                learnData = SSjhs3s6ss1Lesson4LearnData;
                practiceData = SSjhs3s6ss1Lesson4PracticeData;
                independentPracticeData = SSjhs3s6ss1Lesson4IndependentQuizData;
                quizData = SSjhs3s6ss1Lesson4QuizData;
              }

              ///Religious & Moral Education
              ///strand 1
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEs1ss1Lesson1GetReadyData;
                learnData = RMEs1ss1Lesson1LearnData;
                practiceData = RMEs1ss1Lesson1PracticeData;
                independentPracticeData = RMEs1ss1Lesson1IndependentQuizData;
                quizData = RMEs1ss1Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEs1ss1Lesson2GetReadyData;
                learnData = RMEs1ss1Lesson2LearnData;
                practiceData = RMEs1ss1Lesson2PracticeData;
                independentPracticeData = RMEs1ss1Lesson2IndependentQuizData;
                quizData = RMEs1ss1Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEs1ss1Lesson3GetReadyData;
                learnData = RMEs1ss1Lesson3LearnData;
                practiceData = RMEs1ss1Lesson3PracticeData;
                independentPracticeData = RMEs1ss1Lesson3IndependentQuizData;
                quizData = RMEs1ss1Lesson3QuizData;
              }

              ///Strand 2
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEs2ss1Lesson1GetReadyData;
                learnData = RMEs2ss1Lesson1LearnData;
                practiceData = RMEs2ss1Lesson1PracticeData;
                independentPracticeData = RMEs2ss1Lesson1IndependentQuizData;
                quizData = RMEs2ss1Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEs2ss1Lesson2GetReadyData;
                learnData = RMEs2ss1Lesson2LearnData;
                practiceData = RMEs2ss1Lesson2PracticeData;
                independentPracticeData = RMEs2ss1Lesson2IndependentQuizData;
                quizData = RMEs2ss1Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEs2ss1Lesson3GetReadyData;
                learnData = RMEs2ss1Lesson3LearnData;
                practiceData = RMEs2ss1Lesson3PracticeData;
                independentPracticeData = RMEs2ss1Lesson3IndependentQuizData;
                quizData = RMEs2ss1Lesson3QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = RMEs2ss1Lesson4GetReadyData;
                learnData = RMEs2ss1Lesson4LearnData;
                practiceData = RMEs2ss1Lesson4PracticeData;
                independentPracticeData = RMEs2ss1Lesson4IndependentQuizData;
                quizData = RMEs2ss1Lesson4QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = RMEs2ss2Lesson1GetReadyData;
                learnData = RMEs2ss2Lesson1LearnData;
                practiceData = RMEs2ss2Lesson1PracticeData;
                independentPracticeData = RMEs2ss2Lesson1IndependentQuizData;
                quizData = RMEs2ss2Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = RMEs2ss2Lesson2GetReadyData;
                learnData = RMEs2ss2Lesson2LearnData;
                practiceData = RMEs2ss2Lesson2PracticeData;
                independentPracticeData = RMEs2ss2Lesson2IndependentQuizData;
                quizData = RMEs2ss2Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = RMEs2ss2Lesson3GetReadyData;
                learnData = RMEs2ss2Lesson3LearnData;
                practiceData = RMEs2ss2Lesson3PracticeData;
                independentPracticeData = RMEs2ss2Lesson3IndependentQuizData;
                quizData = RMEs2ss2Lesson3QuizData;
              }

              ///Strand3
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEs3ss1Lesson1GetReadyData;
                learnData = RMEs3ss1Lesson1LearnData;
                practiceData = RMEs3ss1Lesson1PracticeData;
                independentPracticeData = RMEs3ss1Lesson1IndependentQuizData;
                quizData = RMEs3ss1Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEs3ss1Lesson2GetReadyData;
                learnData = RMEs3ss1Lesson2LearnData;
                practiceData = RMEs3ss1Lesson2PracticeData;
                independentPracticeData = RMEs3ss1Lesson2IndependentQuizData;
                quizData = RMEs3ss1Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEs3ss1Lesson3GetReadyData;
                learnData = RMEs3ss1Lesson3LearnData;
                practiceData = RMEs3ss1Lesson3PracticeData;
                independentPracticeData = RMEs3ss1Lesson3IndependentQuizData;
                quizData = RMEs3ss1Lesson3QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEs4ss1Lesson1GetReadyData;
                learnData = RMEs4ss1Lesson1LearnData;
                practiceData = RMEs4ss1Lesson1PracticeData;
                independentPracticeData = RMEs4ss1Lesson1IndependentQuizData;
                quizData = RMEs4ss1Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEs4ss1Lesson2GetReadyData;
                learnData = RMEs4ss1Lesson2LearnData;
                practiceData = RMEs4ss1Lesson2PracticeData;
                independentPracticeData = RMEs4ss1Lesson2IndependentQuizData;
                quizData = RMEs4ss1Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEs4ss1Lesson3GetReadyData;
                learnData = RMEs4ss1Lesson3LearnData;
                practiceData = RMEs4ss1Lesson3PracticeData;
                independentPracticeData = RMEs4ss1Lesson3IndependentQuizData;
                quizData = RMEs4ss1Lesson3QuizData;
              }

              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEs5ss1Lesson1GetReadyData;
                learnData = RMEs5ss1Lesson1LearnData;
                practiceData = RMEs5ss1Lesson1PracticeData;
                independentPracticeData = RMEs5ss1Lesson1IndependentQuizData;
                quizData = RMEs5ss1Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEs5ss1Lesson2GetReadyData;
                learnData = RMEs5ss1Lesson2LearnData;
                practiceData = RMEs5ss1Lesson2PracticeData;
                independentPracticeData = RMEs5ss1Lesson2IndependentQuizData;
                quizData = RMEs5ss1Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEs5ss1Lesson3GetReadyData;
                learnData = RMEs5ss1Lesson3LearnData;
                practiceData = RMEs5ss1Lesson3PracticeData;
                independentPracticeData = RMEs5ss1Lesson3IndependentQuizData;
                quizData = RMEs5ss1Lesson3QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = RMEs5ss1Lesson4GetReadyData;
                learnData = RMEs5ss1Lesson4LearnData;
                practiceData = RMEs5ss1Lesson4PracticeData;
                independentPracticeData = RMEs5ss1Lesson4IndependentQuizData;
                quizData = RMEs5ss1Lesson4QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = RMEs5ss2Lesson1GetReadyData;
                learnData = RMEs5ss2Lesson1LearnData;
                practiceData = RMEs5ss2Lesson1PracticeData;
                independentPracticeData = RMEs5ss2Lesson1IndependentQuizData;
                quizData = RMEs5ss2Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = RMEs5ss2Lesson2GetReadyData;
                learnData = RMEs5ss2Lesson2LearnData;
                practiceData = RMEs5ss2Lesson2PracticeData;
                independentPracticeData = RMEs5ss2Lesson2IndependentQuizData;
                quizData = RMEs5ss2Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = RMEs5ss2Lesson3GetReadyData;
                learnData = RMEs5ss2Lesson3LearnData;
                practiceData = RMEs5ss2Lesson3PracticeData;
                independentPracticeData = RMEs5ss2Lesson3IndependentQuizData;
                quizData = RMEs5ss2Lesson3QuizData;
              }

              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEs6ss1Lesson1GetReadyData;
                learnData = RMEs6ss1Lesson1LearnData;
                practiceData = RMEs6ss1Lesson1PracticeData;
                independentPracticeData = RMEs6ss1Lesson1IndependentQuizData;
                quizData = RMEs6ss1Lesson1QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEs6ss1Lesson2GetReadyData;
                learnData = RMEs6ss1Lesson2LearnData;
                practiceData = RMEs6ss1Lesson2PracticeData;
                independentPracticeData = RMEs6ss1Lesson2IndependentQuizData;
                quizData = RMEs6ss1Lesson2QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEs6ss1Lesson3GetReadyData;
                learnData = RMEs6ss1Lesson3LearnData;
                practiceData = RMEs6ss1Lesson3PracticeData;
                independentPracticeData = RMEs6ss1Lesson3IndependentQuizData;
                quizData = RMEs6ss1Lesson3QuizData;
              }
              if (courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = RMEs6ss1Lesson4GetReadyData;
                learnData = RMEs6ss1Lesson4LearnData;
                practiceData = RMEs6ss1Lesson4PracticeData;
                independentPracticeData = RMEs6ss1Lesson4IndependentQuizData;
                quizData = RMEs6ss1Lesson4QuizData;
              }

              ///jhs2
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS2s1ss1Lesson1GetReadyData;
                learnData = RMEjhs2s1ss1Lesson1LearnData;
                practiceData = RMEjhs2s1ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs2s1ss1Lesson1IndependentQuizData;
                quizData = RMEjhs2s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS2s1ss1Lesson2GetReadyData;
                learnData = RMEjhs2s1ss1Lesson2LearnData;
                practiceData = RMEjhs2s1ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs2s1ss1Lesson2IndependentQuizData;
                quizData = RMEjhs2s1ss1Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS2s2ss1Lesson1GetReadyData;
                learnData = RMEjhs2s2ss1Lesson1LearnData;
                practiceData = RMEjhs2s2ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs2s2ss1Lesson1IndependentQuizData;
                quizData = RMEjhs2s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS2s2ss1Lesson2GetReadyData;
                learnData = RMEjhs2s2ss1Lesson2LearnData;
                practiceData = RMEjhs2s2ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs2s2ss1Lesson2IndependentQuizData;
                quizData = RMEjhs2s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS2s2ss1Lesson3GetReadyData;
                learnData = RMEjhs2s2ss1Lesson3LearnData;
                practiceData = RMEjhs2s2ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs2s2ss1Lesson3IndependentQuizData;
                quizData = RMEjhs2s2ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = RMEJHS2s2ss1Lesson4GetReadyData;
                learnData = RMEjhs2s2ss1Lesson4LearnData;
                practiceData = RMEjhs2s2ss1Lesson4PracticeData;
                independentPracticeData =
                    RMEjhs2s2ss1Lesson4IndependentQuizData;
                quizData = RMEjhs2s2ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = RMEJHS2s2ss1Lesson5GetReadyData;
                learnData = RMEjhs2s2ss1Lesson5LearnData;
                practiceData = RMEjhs2s2ss1Lesson5PracticeData;
                independentPracticeData =
                    RMEjhs2s2ss1Lesson5IndependentQuizData;
                quizData = RMEjhs2s2ss1Lesson5QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = RMEJHS2s2ss1Lesson6GetReadyData;
                learnData = RMEjhs2s2ss1Lesson6LearnData;
                practiceData = RMEjhs2s2ss1Lesson6PracticeData;
                independentPracticeData =
                    RMEjhs2s2ss1Lesson6IndependentQuizData;
                quizData = RMEjhs2s2ss1Lesson6QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS2s3ss1Lesson1GetReadyData;
                learnData = RMEjhs2s3ss1Lesson1LearnData;
                practiceData = RMEjhs2s3ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs2s3ss1Lesson1IndependentQuizData;
                quizData = RMEjhs2s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS2s3ss1Lesson2GetReadyData;
                learnData = RMEjhs2s3ss1Lesson2LearnData;
                practiceData = RMEjhs2s3ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs2s3ss1Lesson2IndependentQuizData;
                quizData = RMEjhs2s3ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS2s3ss1Lesson3GetReadyData;
                learnData = RMEjhs2s3ss1Lesson3LearnData;
                practiceData = RMEjhs2s3ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs2s3ss1Lesson3IndependentQuizData;
                quizData = RMEjhs2s3ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS2s4ss1Lesson1GetReadyData;
                learnData = RMEjhs2s4ss1Lesson1LearnData;
                practiceData = RMEjhs2s4ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs2s4ss1Lesson1IndependentQuizData;
                quizData = RMEjhs2s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS2s4ss1Lesson2GetReadyData;
                learnData = RMEjhs2s4ss1Lesson2LearnData;
                practiceData = RMEjhs2s4ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs2s4ss1Lesson2IndependentQuizData;
                quizData = RMEjhs2s4ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS2s4ss1Lesson3GetReadyData;
                learnData = RMEjhs2s4ss1Lesson3LearnData;
                practiceData = RMEjhs2s4ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs2s4ss1Lesson3IndependentQuizData;
                quizData = RMEjhs2s4ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS2s5ss1Lesson1GetReadyData;
                learnData = RMEjhs2s5ss1Lesson1LearnData;
                practiceData = RMEjhs2s5ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs2s5ss1Lesson1IndependentQuizData;
                quizData = RMEjhs2s5ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS2s5ss1Lesson2GetReadyData;
                learnData = RMEjhs2s5ss1Lesson2LearnData;
                practiceData = RMEjhs2s5ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs2s5ss1Lesson2IndependentQuizData;
                quizData = RMEjhs2s5ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS2s6ss1Lesson1GetReadyData;
                learnData = RMEjhs2s6ss1Lesson1LearnData;
                practiceData = RMEjhs2s6ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs2s6ss1Lesson1IndependentQuizData;
                quizData = RMEjhs2s6ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS2s6ss1Lesson2GetReadyData;
                learnData = RMEjhs2s6ss1Lesson2LearnData;
                practiceData = RMEjhs2s6ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs2s6ss1Lesson2IndependentQuizData;
                quizData = RMEjhs2s6ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS2s6ss1Lesson3GetReadyData;
                learnData = RMEjhs2s6ss1Lesson3LearnData;
                practiceData = RMEjhs2s6ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs2s6ss1Lesson3IndependentQuizData;
                quizData = RMEjhs2s6ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = RMEJHS2s6ss1Lesson4GetReadyData;
                learnData = RMEjhs2s6ss1Lesson4LearnData;
                practiceData = RMEjhs2s6ss1Lesson4PracticeData;
                independentPracticeData =
                    RMEjhs2s6ss1Lesson4IndependentQuizData;
                quizData = RMEjhs2s6ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = RMEJHS2s6ss2Lesson1GetReadyData;
                learnData = RMEjhs2s6ss2Lesson1LearnData;
                practiceData = RMEjhs2s6ss2Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs2s6ss2Lesson1IndependentQuizData;
                quizData = RMEjhs2s6ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = RMEJHS2s6ss2Lesson2GetReadyData;
                learnData = RMEjhs2s6ss2Lesson2LearnData;
                practiceData = RMEjhs2s6ss2Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs2s6ss2Lesson2IndependentQuizData;
                quizData = RMEjhs2s6ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS3s1ss1Lesson1GetReadyData;
                learnData = RMEjhs3s1ss1Lesson1LearnData;
                practiceData = RMEjhs3s1ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs3s1ss1Lesson1IndependentQuizData;
                quizData = RMEjhs3s1ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS3s1ss1Lesson2GetReadyData;
                learnData = RMEjhs3s1ss1Lesson2LearnData;
                practiceData = RMEjhs3s1ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs3s1ss1Lesson2IndependentQuizData;
                quizData = RMEjhs3s1ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = RMEJHS3s1ss2Lesson1GetReadyData;
                learnData = RMEjhs3s1ss2Lesson1LearnData;
                practiceData = RMEjhs3s1ss2Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs3s1ss2Lesson1IndependentQuizData;
                quizData = RMEjhs3s1ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = RMEJHS3s1ss2Lesson2GetReadyData;
                learnData = RMEjhs3s1ss2Lesson2LearnData;
                practiceData = RMEjhs3s1ss2Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs3s1ss2Lesson2IndependentQuizData;
                quizData = RMEjhs3s1ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = RMEJHS3s1ss2Lesson3GetReadyData;
                learnData = RMEjhs3s1ss2Lesson3LearnData;
                practiceData = RMEjhs3s1ss2Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs3s1ss2Lesson3IndependentQuizData;
                quizData = RMEjhs3s1ss2Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS3s2ss1Lesson1GetReadyData;
                learnData = RMEjhs3s2ss1Lesson1LearnData;
                practiceData = RMEjhs3s2ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs3s2ss1Lesson1IndependentQuizData;
                quizData = RMEjhs3s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS3s2ss1Lesson2GetReadyData;
                learnData = RMEjhs3s2ss1Lesson2LearnData;
                practiceData = RMEjhs3s2ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs3s2ss1Lesson2IndependentQuizData;
                quizData = RMEjhs3s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS3s2ss1Lesson3GetReadyData;
                learnData = RMEjhs3s2ss1Lesson3LearnData;
                practiceData = RMEjhs3s2ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs3s2ss1Lesson3IndependentQuizData;
                quizData = RMEjhs3s2ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS3s3ss1Lesson1GetReadyData;
                learnData = RMEjhs3s3ss1Lesson1LearnData;
                practiceData = RMEjhs3s3ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs3s3ss1Lesson1IndependentQuizData;
                quizData = RMEjhs3s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS3s3ss1Lesson2GetReadyData;
                learnData = RMEjhs3s3ss1Lesson2LearnData;
                practiceData = RMEjhs3s3ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs3s3ss1Lesson2IndependentQuizData;
                quizData = RMEjhs3s3ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS3s3ss1Lesson3GetReadyData;
                learnData = RMEjhs3s3ss1Lesson3LearnData;
                practiceData = RMEjhs3s3ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs3s3ss1Lesson3IndependentQuizData;
                quizData = RMEjhs3s3ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS3s4ss1Lesson1GetReadyData;
                learnData = RMEjhs3s4ss1Lesson1LearnData;
                practiceData = RMEjhs3s4ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs3s4ss1Lesson1IndependentQuizData;
                quizData = RMEjhs3s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS3s4ss1Lesson2GetReadyData;
                learnData = RMEjhs3s4ss1Lesson2LearnData;
                practiceData = RMEjhs3s4ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs3s4ss1Lesson2IndependentQuizData;
                quizData = RMEjhs3s4ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS3s4ss1Lesson3GetReadyData;
                learnData = RMEjhs3s4ss1Lesson3LearnData;
                practiceData = RMEjhs3s4ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs3s4ss1Lesson3IndependentQuizData;
                quizData = RMEjhs3s4ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS3s5ss1Lesson1GetReadyData;
                learnData = RMEjhs3s5ss1Lesson1LearnData;
                practiceData = RMEjhs3s5ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs3s5ss1Lesson1IndependentQuizData;
                quizData = RMEjhs3s5ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS3s5ss1Lesson2GetReadyData;
                learnData = RMEjhs3s5ss1Lesson2LearnData;
                practiceData = RMEjhs3s5ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs3s5ss1Lesson2IndependentQuizData;
                quizData = RMEjhs3s5ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS3s5ss1Lesson3GetReadyData;
                learnData = RMEjhs3s5ss1Lesson3LearnData;
                practiceData = RMEjhs3s5ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs3s5ss1Lesson3IndependentQuizData;
                quizData = RMEjhs3s5ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = RMEJHS3s6ss1Lesson1GetReadyData;
                learnData = RMEjhs3s6ss1Lesson1LearnData;
                practiceData = RMEjhs3s6ss1Lesson1PracticeData;
                independentPracticeData =
                    RMEjhs3s6ss1Lesson1IndependentQuizData;
                quizData = RMEjhs3s6ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = RMEJHS3s6ss1Lesson2GetReadyData;
                learnData = RMEjhs3s6ss1Lesson2LearnData;
                practiceData = RMEjhs3s6ss1Lesson2PracticeData;
                independentPracticeData =
                    RMEjhs3s6ss1Lesson2IndependentQuizData;
                quizData = RMEjhs3s6ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Religious & Moral Education" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = RMEJHS3s6ss1Lesson3GetReadyData;
                learnData = RMEjhs3s6ss1Lesson3LearnData;
                practiceData = RMEjhs3s6ss1Lesson3PracticeData;
                independentPracticeData =
                    RMEjhs3s6ss1Lesson3IndependentQuizData;
                quizData = RMEjhs3s6ss1Lesson3QuizData;
              }

              return Lesson(
                title: "Lesson ${lIndex + 1}",
                topic: topicName,
                isCompleted: false,
                getReady: getReadyData,
                learn: learnData,
                practice: practiceData,
                independentPractice: independentPracticeData,
                quiz: quizData,
              );
            }).toList(),
          );
        }).toList(),
      );
    });

    generatedStrands.add(
      Strand(
        title: "BECE",
        subtitle: "Past Exam",
        isCompleted: false,
        isLocked: generatedStrands.isNotEmpty,
        subStrands: [
          SubStrand(
            title: "Mock",
            subtitle: "Final Mock Exam",
            lessons: [
              Lesson(
                title: "Lesson 1",
                topic: "Full Syllabus",
                courseName: courseTitle,
                strandName: "BECE",
                subStrandName: "Final Mock Exam",
                lessonNumber: "1",
                gradeName: grade,
                getReady: defaultGetReadyData,
                learn: defaultLearnData,
                practice: defaultPracticeData,
                independentPractice: defaultIndependentQuizData,
                quiz: defaultQuizData,
              ),
            ],
          ),
        ],
      ),
    );

    return generatedStrands;
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
    if (index != -1) {
      selectedCourse.value = null; // Reset course if navigating away from home
    }
  }

  void selectCourse(Course course) {
    selectedCourse.value = course;
    selectedStrandIndex.value = 0; // Default to first strand
    selectedIndex.value = -1; // Switch to course view
    loadActualProgress();
  }

  void resetToHome() {
    selectedCourse.value = null;
    selectedIndex.value = 0;
  }

  void changeStrand(int index) {
    selectedStrandIndex.value = index;
    strandSearchController.clear();
    strandSearchText.value = "";
  }
}
