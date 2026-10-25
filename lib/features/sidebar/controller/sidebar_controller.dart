import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/models/course_model.dart';
import '../../home/models/strand_model.dart';

import '../../home/screens/contents/data/all_get_ready_data.dart';
import '../../home/screens/contents/data/all_learn_data.dart';
import '../../home/screens/contents/data/all_practice_data.dart';
import '../../home/screens/contents/data/all_independent_quiz_data.dart';
import '../../home/screens/contents/data/all_quiz_data.dart';
import '../../home/screens/contents/data/bece_quiz_data.dart';
import '../../home/screens/contents/data/bece_practice_data.dart';
import '../../home/screens/contents/model/practice_model.dart';
import '../../home/screens/contents/model/quiz_model.dart';
import '../../progress/repositories/progress_repository.dart';
import '../../progress/models/progress_model.dart';
import '../../progress/repositories/bece_progress_repository.dart';
import '../../progress/models/bece_progress_model.dart';
import '../../profile/controller/profile_controller.dart';
import 'package:intl/intl.dart';
import '../../../core/config/debug_print.dart';

class SidebarController extends GetxController {
  static const List<Map<String, dynamic>> _careerCourseData = [
    {
      "subtitle": "PERSONAL HYGIENE AND FOOD HYGIENE",
      "subStrands": [
        {
          "subtitle": "PERSONAL HYGIENE AND FOOD HYGIENE",
          "topics": [
            "The Need to Stay Healthy",
            "Ways of Maintaining Personal Hygiene",
            "Food Hygiene Practices",
          ],
        },
      ],
    },
    {
      "subtitle": "MATERIALS FOR PRODUCTION",
      "subStrands": [
        {
          "subtitle": "MATERIALS FOR PRODUCTION",
          "topics": ["Introduction to Materials for Production"],
        },
      ],
    },
    {
      "subtitle": "Tools, Equipment and Processes",
      "subStrands": [
        {
          "subtitle": "Tools, Equipment and Processes",
          "topics": ["Introduction to Tools, Equipment and Processes"],
        },
      ],
    },
    {
      "subtitle": "Technology",
      "subStrands": [
        {
          "subtitle": "Technology",
          "topics": ["Introduction to Technology"],
        },
      ],
    },
    {
      "subtitle": "DESIGNING AND MAKING OF ARTEFACTS/PRODUCTS",
      "subStrands": [
        {
          "subtitle": "DESIGNING AND MAKING OF ARTEFACTS/PRODUCTS",
          "topics": ["Introduction to Designing and Making Products"],
        },
      ],
    },
    {
      "subtitle": "ENTREPRENEURIAL SKILLS",
      "subStrands": [
        {
          "subtitle": "ENTREPRENEURIAL SKILLS",
          "topics": ["Introduction to Entrepreneurial Skills"],
        },
      ],
    },
  ];

  static const Map<String, Map<String, List<Map<String, dynamic>>>>
  _additionalCourseData = {
    "JHS 1": {
      "CAREER": _careerCourseData,
      "COMPUTING": [
        {
          "subtitle": "INTRODUCTION TO COMPUTING",
          "subStrands": [
            {
              "subtitle": "COMPONENTS OF COMPUTERS AND COMPUTER SYSTEMS",
              "topics": [
                "Fourth-Generation Computers",
                "Input Devices",
                "Output Devices",
                "Storage Devices and Media",
                "Latest Windows Operating System Features",
                "File Management Techniques",
              ],
            },
            {
              "subtitle": "TECHNOLOGY IN THE COMMUNITY",
              "topics": [
                "Technology Tools for Learning",
                "Demonstrating the Use of Technology Tools",
                "Benefits of Using Technology Tools in Learning",
                "Negative Impacts of Computers and Computer Use on the Environment",
                "Environmentally Responsible Computing Practices",
                "Creating Components from Disposed Computer Parts",
              ],
            },
            {
              "subtitle": "HEALTH AND SAFETY IN THE USE OF ICT TOOLS",
              "topics": [
                "Computing-Related Health Hazards and Preventive Measures",
                "Safety Measures in Using ICT Tools",
                "Workstation Health Risk Assessment and Mitigation",
                "Workstation Safety Measures and Hazard Mitigation",
              ],
            },
          ],
        },
        {
          "subtitle": "PRODUCTIVITY SOFTWARE",
          "subStrands": [
            {
              "subtitle": "INTRODUCTION TO WORD PROCESSING",
              "topics": [
                "Importance of Word Processing Software",
                "Inserting, Selecting, Deleting, and Moving Text",
                "Finding, Replacing Content, and Undoing Edited Changes",
                "Spell Check, Content Translation, and Language Setting",
                "Text Decoration, Text Case, Text Size, and Colour",
                "Paragraph Alignment, Indentation, Bullets, Line Spacing, and Shadin",
                "Setting Tabs and Applying Tab Formatting",
              ],
            },
            {
              "subtitle": " INTRODUCTION TO PRESENTATION SOFTWARE",
              "topics": [
                "Importance and Applications of Presentation Software",
                "Exploring the Microsoft PowerPoint Interface, Themes, and Proofing Tools",
                "Inserting Special Characters and Designing a Multi-Slide Presentation Using the Insert Ribbon",
                "Formatting Text: Case, Size, Colour, and Decoration",
                "Paragraph Formatting: Alignment, Indentation, Borders, and Shading",
                "Using the Slide Master, Design Templates, and Delivering a 5-Slide Presentation",
              ],
            },
            {
              "subtitle": " INTRODUCTION TO ELECTRONIC SPREADSHEET",
              "topics": [
                "Importance of Electronic Spreadsheets",
                "Features of the MS-Excel Interface",
                "Setting Cell Datatypes",
                "Align Text, Merge & Wrap, Borders and Shades",
                "Adjust Margins and Set Page Orientation",
                "Setting Up Headers and Footers",
                "The AutoFill Function in MS-Excel",
                "Creating Spreadsheet Formulas",
              ],
            },
          ],
        },
        {
          "subtitle": "COMMUNICATION NETWORKS",
          "subStrands": [
            {
              "subtitle": "COMPUTER NETWORKS",
              "topics": [
                "NETWORK TOPOLOGIES AND HARDWARE",
                "TYPES OF NETWORKS",
                "ENTREPRENEURIAL OPPORTUNITIES IN NETWORKING",
              ],
            },
            {
              "subtitle": "INTERNET AND SOCIAL MEDIA",
              "topics": [
                "TYPES AND USES OF SOCIAL MEDIA SITES",
                "ELECTRONIC MAIL FEATURES (ATTACHMENT AND ADDRESS BOOK)",
              ],
            },
            {
              "subtitle": "INFORMATION SECURITY",
              "topics": [
                "KEY PRINCIPLES OF INFORMATION SECURITY",
                "INTELLECTUAL PROPERTY RIGHTS AND LEGAL ISSUES",
                "INFORMATION SECURITY FORENSIC AUDITING AND CRIMINAL LAWS AGAINST OFFENDERS",
              ],
            },
            {
              "subtitle": "WEB TECHNOLOGIES",
              "topics": [
                "Importance of the Web in Learning (Virtual Learning Environments)",
                "Exploring Open Learning Websites in the Classroom",
                "Techniques for Evaluating Web Pages",
              ],
            },
          ],
        },
        {
          "subtitle": "COMPUTATIONAL THINKING",
          "subStrands": [
            {
              "subtitle": "INTRODUCTION TO PROGRAMMING",
              "topics": [
                "Programming Terminologies",
                "Data Types",
                "Constants and Variables",
              ],
            },
            {
              "subtitle": "ALGORITHM",
              "topics": [
                "FUNDAMENTAL CONCEPTS OF ALGORITHMS AND CONTROL STRUCTURES",
                "PERFORMING A LINEAR SEARCH",
              ],
            },
            {
              "subtitle": "ROBOTICS",
              "topics": [
                "Applications, Prospects, and Challenges of Robots in Society",
              ],
            },
            {
              "subtitle": "ARTIFICIAL INTELLIGENCE",
              "topics": [
                "INTRODUCTION TO ARTIFICIAL INTELLIGENCE AND KEY TECHNOLOGIES",
              ],
            },
          ],
        },
      ],
      "CREATIVE ARTS": [
        {
          "subtitle": "VISUAL ARTS",
          "subStrands": [
            {
              "subtitle": "ELEMENTS AND MATERIALS",
              "topics": [
                "Elements of Art and Design",
                "Exploring Local Art Materials",
              ],
            },
          ],
        },
        {
          "subtitle": "PERFORMING ARTS",
          "subStrands": [
            {
              "subtitle": "MUSIC, DANCE AND DRAMA",
              "topics": [
                "Introduction to Rhythm and Movement",
                "Storytelling and Drama",
              ],
            },
          ],
        },
      ],
      "FRENCH": [
        {
          "subtitle": "ORAL COMMUNICATION",
          "subStrands": [
            {
              "subtitle": "EVERYDAY CONVERSATION",
              "topics": [
                "Greetings and Introductions",
                "Talking About Myself and My Family",
              ],
            },
          ],
        },
        {
          "subtitle": "READING AND WRITING",
          "subStrands": [
            {
              "subtitle": "FOUNDATIONAL FRENCH",
              "topics": [
                "French Sounds and Simple Words",
                "Writing Simple Sentences",
              ],
            },
          ],
        },
      ],
    },
    "JHS 2": {
      "CAREER": _careerCourseData,
      "COMPUTING": [
        {
          "subtitle": "INTRODUCTION TO COMPUTING",
          "subStrands": [
            {
              "subtitle": "COMPONENTS OF COMPUTERS AND COMPUTER SYSTEMS",
              "topics": [
                "The Fifth Generation of Computers and Emerging Technologies",
                "Direct Data Entry Devices",
                "Specialized Output Devices and Modern Printers",
                "Modern Secondary Storage Devices and Flash Technologies",
                "Exploring Desktop Features and the Charms Bar",
                "Drive and File Management Techniques",
              ],
            },
            {
              "subtitle": "TECHNOLOGY IN THE COMMUNITY",
              "topics": [
                "Computer Accessibility and Assistive Technologies",
                "Portable Computing Devices in Everyday Life",
                "Issues Associated with Online Services",
              ],
            },
            {
              "subtitle": "HEALTH AND SAFETY IN THE USE OF ICT TOOLS",
              "topics": [
                "HEALTH ISSUES AT COMPUTER WORKSTATIONS",
                "SAFETY MEASURES IN RISK REDUCTION AT WORKSTATIONS",
              ],
            },
          ],
        },
        {
          "subtitle": "PRODUCTIVITY SOFTWARE",
          "subStrands": [
            {
              "subtitle": "INTRODUCTION TO WORD PROCESSING",
              "topics": [
                "CREATING TABLES AND HYPERLINKS IN WORD PROCESSING",
                "MERGING, SPLITTING, FORMULAS, BORDERS, AND SHADES",
                "PAGE FORMATTING (PAGE ADJUSTMENT, HEADERS, FOOTERS, PAGE NUMBERS, BREAKS, AND ORIENTATIONS)",
              ],
            },
            {
              "subtitle": "INTRODUCTION TO PRESENTATION",
              "topics": [
                "Inserting, Capturing, and Formatting Pictures in Presentation Slides",
                "Adding, Editing, Formatting, and Grouping Shapes",
                "Adding Text to Shapes and Arranging Shapes",
              ],
            },
            {
              "subtitle": "INTRODUCTION TO DESKTOP PUBLISHING",
              "topics": [
                "Importance of Desktop Publishing Software (DTP)",
                "Creating and Saving a Document from Blank or Pre-Designed Templates",
                "Using Commands in MS-Publisher Ribbons",
                "Changing Orientation and Margins of a Document",
                "Adding and Modifying Pictures from Different Sources",
                "Adding and Modifying Text",
                "Creating and Presenting Publisher Documents",
              ],
            },
            {
              "subtitle": "INTRODUCTION TO ELECTRONIC SPREADSHEET",
              "topics": [
                "Performing Operations Using Functions and Built-in Functions",
                "Demonstrating How to Create Complex Formulas",
                "Demonstrating How to Copy Formulas and References",
              ],
            },
          ],
        },
        {
          "subtitle": "COMMUNICATION NETWORKS",
          "subStrands": [
            {
              "subtitle": "COMPUTER NETWORKS",
              "topics": [
                "DATA COMMUNICATION MODELS FOR NETWORKS",
                "THE INTERNET, WORLD WIDE WEB, AND IP ADDRESSES",
              ],
            },
            {
              "subtitle": "INTERNET AND SOCIAL MEDIA",
              "topics": [
                "TYPES OF SOCIAL MEDIA SITES AND PLATFORMS",
                "ELECTRONIC MAIL – ATTACHING DOCUMENTS AND MANAGING FILES",
                "ELECTRONIC MAIL – USING THE ADDRESS BOOK AND MANAGING CONTACTS",
              ],
            },
            {
              "subtitle": "INFORMATION SECURITY",
              "topics": [
                "Nature of Four Major Data Threats",
                "Protection Methods Against Data Threats",
              ],
            },
            {
              "subtitle": "WEB TECHNOLOGIES",
              "topics": [
                "Effective Search Techniques in a Web Browser",
                "Exploring Multiple Search Engines",
              ],
            },
          ],
        },
        {
          "subtitle": "COMPUTATIONAL THINKING",
          "subStrands": [
            {
              "subtitle": "INTRODUCTION TO PROGRAMMING",
              "topics": [
                "Basic Programming Concepts and Operator Notations",
                "Using Comparison and Logical Operators in Block-Based Coding",
                "Writing and Evaluating Algorithms and Expressions",
                "Creating Variables and Executing Basic Programs in Scratch",
                "Practical Applications of Comparison and Logical Blocks in Scratch",
              ],
            },
            {
              "subtitle": "ALGORITHMS",
              "topics": [
                "B8.4.2.1.1 - Applying Variables, Expressions, Assignment Statements, and Operator Precedence (BODMAS)",
                "B8.4.2.1.2 - Describing and Using Sequence, Selection, and Iteration Statements, and Naming Conventions",
                "B8.4.2.1.3 - Representing Algorithms Using Pseudocode and Flowcharts",
                "B8.4.2.1.4 - Implementing Selection Statements and Branching Logic",
                "Iteration Statements and Looping Structures (FOR, WHILE, REPEAT UNTIL)",
              ],
            },
            {
              "subtitle": "ROBOTICS",
              "topics": [
                "Principles of Robot Components",
                "Real-World Applications and Environmental Sensing",
                "Robot Programming and Movement Control",
                "Robot Kits and Assembly Practices",
              ],
            },
            {
              "subtitle": "ARTIFICIAL INTELLIGENCE",
              "topics": [
                "Artificial Neural Networks and Comparing Intelligences",
                "Strong and Weak Artificial Intelligence",
                "B8.4.4.1.3 - Hologram Science and 3D Mixed Reality Intelligence",
                "B8.4.4.1.4 - Comparing Limitations and Capabilities of Human, Animal, and Machine Intelligence",
                "B8.4.4.1.5 - Review and Synthesis of Artificial Intelligence Concepts",
              ],
            },
          ],
        },
      ],
      "CREATIVE ARTS": [
        {
          "subtitle": "DESIGN AND MAKING",
          "subStrands": [
            {
              "subtitle": "CREATIVE DESIGN PROCESSES",
              "topics": [
                "Developing Ideas Through Drawing",
                "Creating Art from Local Materials",
              ],
            },
          ],
        },
        {
          "subtitle": "PERFORMANCE AND APPRECIATION",
          "subStrands": [
            {
              "subtitle": "GHANAIAN CREATIVE EXPRESSION",
              "topics": [
                "Traditional Music and Dance",
                "Planning a Short Dramatic Performance",
              ],
            },
          ],
        },
      ],
      "FRENCH": [
        {
          "subtitle": "DAILY COMMUNICATION",
          "subStrands": [
            {
              "subtitle": "SCHOOL AND COMMUNITY",
              "topics": [
                "Talking About School Life",
                "Asking for and Giving Directions",
              ],
            },
          ],
        },
        {
          "subtitle": "LANGUAGE STRUCTURES",
          "subStrands": [
            {
              "subtitle": "VOCABULARY AND GRAMMAR",
              "topics": [
                "Describing People and Places",
                "Writing Short Messages in French",
              ],
            },
          ],
        },
      ],
    },
    "JHS 3": {
      "CAREER": _careerCourseData,
      "COMPUTING": [
        {
          "subtitle": "INTRODUCTION TO COMPUTING",
          "subStrands": [
            {
              "subtitle": "COMPONENTS OF COMPUTERS AND COMPUTER SYSTEMS",
              "topics": [
                "Trends in the Next Generation of Computers",
                "The Concept of Perceptual Computing",
                "Output Devices: Wearable Displays, E-Paper, E-Books, and Kindle",
                "Modern Storage Systems: Network, Cloud, Smart Cards, Holographic, and Enterprise Storage",
                "Computer Personalisation: Desktop Icons and Mouse Pointers",
                "Hardware and File Management Techniques: Device Drivers and Plug-and-Play",
              ],
            },
            {
              "subtitle": "TECHNOLOGY IN THE COMMUNITY(COMMUNICATION)",
              "topics": [
                "Evaluating Community Problems Solved with Technology",
                "Proposing Technological Solutions to Community Problems",
                "Designing the Selected Solution",
              ],
            },
            {
              "subtitle": "HEALTH AND SAFETY IN THE USE OF ICT TOOLS",
              "topics": [
                "Evaluating Health Issues and Ergonomics at Computer Workstations",
                "Evaluating Safety Risk Reduction and Managing Heat Generated by Machines",
              ],
            },
          ],
        },
        {
          "subtitle": "PRODUCTIVITY SOFTWARE",
          "subStrands": [
            {
              "subtitle": "INTRODUCTION TO WORD PROCESSING",
              "topics": [
                "Adding Pictures, Screenshots, and Screen Clippings",
                "Demonstrating the Use of SmartArt",
                "Adding Multimedia, Charts, and Hyperlinks",
              ],
            },
            {
              "subtitle": "INTRODUCTION TO PRESENTATION",
              "topics": [
                "Adding Pictures and Inserting Screenshots",
                "Animating Slides and Applying Transitions",
                "Adding Multimedia, Tables, and Charts",
              ],
            },
            {
              "subtitle": "INTRODUCTION TO DESKTOP PUBLISHING",
              "topics": [
                "Creating and Presenting a Desktop Published Document",
                "Describing a Desktop Published Document",
                "Evaluating a Desktop Published Document",
              ],
            },
            {
              "subtitle": "INTRODUCTION TO ELECTRONIC SPREADSHEET",
              "topics": [
                "Data Filtering, Sorting, and Validation",
                "Styles, Themes, Templates, and Macros",
                "Data Tables, Pivot Tables, Charts, and Pivot Charts",
              ],
            },
          ],
        },
        {
          "subtitle": "COMMUNICATION NETWORKS",
          "subStrands": [
            {
              "subtitle": "COMPUTER NETWORKS",
              "topics": [
                "E-Commerce and Cashless Systems",
                "Justifying eLearning Potentials",
              ],
            },
            {
              "subtitle": "INTERNET AND SOCIAL MEDIA",
              "topics": [
                "Advantages and Risks of Social Media, and Email Communication",
              ],
            },
            {
              "subtitle": "INFORMATION SECURITY",
              "topics": [
                "CYBERBULLYING, CYBERSTALKING, DIGITAL FOOTPRINT AND DIGITAL SHADOW",
                "INFORMATION HACKING TECHNIQUES ON THE INTERNET",
              ],
            },
            {
              "subtitle": "WEB TECHNOLOGIES",
              "topics": [
                "EXAMINE THE IMPORTANCE OF CREATING BLOGS",
                "DEVELOP A BLOG FOR THE SCHOOL OR A SOCIAL CLUB",
                "EXPLORE THE STEPS IN PUBLISHING A BLOG",
              ],
            },
          ],
        },
        {
          "subtitle": "COMPUTATIONAL THINKING",
          "subStrands": [
            {
              "subtitle": "INTRODUCTION TO PROGRAMMING",
              "topics": [
                "Converting Decimal, Binary, and Hexadecimal Data and Performing Binary Arithmetic",
                "Exploring Integrated Development Environment (IDE) Tools and Block-Based Programming",
                "Exploring Web Development Programmes to Create a Simple Website",
              ],
            },
            {
              "subtitle": "ALGORITHM",
              "topics": [
                "CONSTRUCTING ALGORITHMS USING SEQUENCE, SELECTION, AND ITERATION",
                "TRANSLATING BETWEEN FLOWCHARTS AND PSEUDOCODE",
              ],
            },
            {
              "subtitle": "ROBOTICS",
              "topics": [
                "Constructing a Robot Artefact and Asimov's Laws of Robotics",
              ],
            },
            {
              "subtitle": "ARTIFICIAL INTELLIGENCE",
              "topics": [
                "Knowledge-Based Systems and Classical Artificial Intelligence",
              ],
            },
          ],
        },
      ],
      "CREATIVE ARTS": [
        {
          "subtitle": "CREATIVE PROJECTS",
          "subStrands": [
            {
              "subtitle": "PLANNING, MAKING AND PRESENTING",
              "topics": [
                "Planning a Creative Arts Project",
                "Producing and Presenting an Artwork",
              ],
            },
          ],
        },
        {
          "subtitle": "ARTS AND SOCIETY",
          "subStrands": [
            {
              "subtitle": "CULTURE AND CREATIVE INDUSTRIES",
              "topics": [
                "The Arts and Ghanaian Identity",
                "Careers in the Creative Industries",
              ],
            },
          ],
        },
      ],
      "FRENCH": [
        {
          "subtitle": "FUNCTIONAL FRENCH",
          "subStrands": [
            {
              "subtitle": "REAL-LIFE COMMUNICATION",
              "topics": [
                "Shopping, Travel and Services",
                "Expressing Opinions and Plans",
              ],
            },
          ],
        },
        {
          "subtitle": "READING AND WRITING",
          "subStrands": [
            {
              "subtitle": "CONNECTED TEXTS",
              "topics": [
                "Reading Short French Passages",
                "Writing Letters and Short Paragraphs",
              ],
            },
          ],
        },
      ],
    },
  };

  RxInt selectedIndex = 0.obs; // -1 means course view
  Rxn<Course> selectedCourse = Rxn<Course>();
  RxInt selectedStrandIndex = 0.obs;
  RxString selectedGrade = "JHS 1".obs;

  String get userBackendGrade {
    if (Get.isRegistered<ProfileController>()) {
      final profileCtrl = Get.find<ProfileController>();
      final studentGrade = profileCtrl.userInfo.value?.student.gradeLevel;
      if (studentGrade != null && studentGrade.trim().isNotEmpty) {
        return studentGrade.trim();
      }
    }
    return "";
  }

  bool isGradeUnlocked(String targetGrade) {
    final userGrade = userBackendGrade;
    if (userGrade.isEmpty) return true;

    int parseGradeRank(String gradeStr) {
      final normalized = gradeStr.trim().toUpperCase().replaceAll(' ', '');
      if (normalized.contains('JHS1') ||
          normalized.contains('JHS-1') ||
          normalized == '1')
        return 1;
      if (normalized.contains('JHS2') ||
          normalized.contains('JHS-2') ||
          normalized == '2')
        return 2;
      if (normalized.contains('JHS3') ||
          normalized.contains('JHS-3') ||
          normalized == '3')
        return 3;
      return 999;
    }

    final userRank = parseGradeRank(userGrade);
    final targetRank = parseGradeRank(targetGrade);

    return targetRank <= userRank;
  }

  void syncSelectedGradeWithUserProfile() {
    final userGrade = userBackendGrade;
    if (userGrade.isNotEmpty) {
      final normalized = userGrade.trim().toUpperCase().replaceAll(' ', '');
      String formattedGrade = "JHS 1";
      if (normalized.contains('JHS1') || normalized.contains('1')) {
        formattedGrade = "JHS 1";
      } else if (normalized.contains('JHS2') || normalized.contains('2')) {
        formattedGrade = "JHS 2";
      } else if (normalized.contains('JHS3') || normalized.contains('3')) {
        formattedGrade = "JHS 3";
      }

      if (!isGradeUnlocked(selectedGrade.value) ||
          selectedGrade.value.isEmpty) {
        selectedGrade.value = formattedGrade;
      }
    }
  }

  final RxString selectedTotalCompletionGrade = "All".obs;
  final RxString selectedChartGrade = "All".obs;
  RxString strandSearchText = "".obs;
  final TextEditingController strandSearchController = TextEditingController();
  final RxString selectedWeeklyWorkFilter = "Today".obs;
  final RxMap<String, String> selectedActivityStatsFilters =
      <String, String>{}.obs;
  final RxList<ActivityProgress> globalProgressCache = <ActivityProgress>[].obs;

  final RxDouble globalTotalCompletion = 0.0.obs;
  final RxMap<String, double> globalSubjectProgress = <String, double>{}.obs;
  final RxMap<String, double> gradeTotalCompletion = <String, double>{
    "JHS 1": 0.0,
    "JHS 2": 0.0,
    "JHS 3": 0.0,
  }.obs;

  double get totalCompletion {
    final grade = selectedTotalCompletionGrade.value;
    if (grade == "All") {
      return globalTotalCompletion.value;
    }
    return gradeTotalCompletion[grade] ?? 0.0;
  }

  double getSubjectProgress(String title) {
    final grade = selectedChartGrade.value;
    if (grade == "All") {
      return globalSubjectProgress[title] ?? 0.0;
    }

    final strands = _generateDummyStrands(title, grade, includeBece: false);
    int totalLessons = 0;
    int completedLessons = 0;

    for (var strand in strands) {
      for (var subStrand in strand.subStrands) {
        for (var lesson in subStrand.lessons) {
          totalLessons++;

          final String normalizedTopic = lesson.topic.trim().toLowerCase();
          final lessonProgress = globalProgressCache
              .where((p) => p.lessonId.trim().toLowerCase() == normalizedTopic)
              .toList();

          final hasGetReady = lessonProgress.any(
            (p) => p.activityType.toLowerCase() == 'get_ready' && p.isCompleted,
          );
          final hasLearn = lessonProgress.any(
            (p) =>
                p.activityType.toLowerCase() == 'learn' &&
                p.subActivity ==
                    'part_${String.fromCharCode(96 + lesson.learn.parts.length)}' &&
                p.isCompleted,
          );
          final hasPractice = lessonProgress.any(
            (p) =>
                p.activityType.toLowerCase() == 'guided_practice' &&
                p.isCompleted,
          );
          final hasIndependent = lessonProgress.any(
            (p) =>
                p.activityType.toLowerCase() == 'independent' && p.isCompleted,
          );
          final hasQuiz = lessonProgress.any(
            (p) => p.activityType.toLowerCase() == 'quiz' && p.isCompleted,
          );

          if (hasGetReady &&
              hasLearn &&
              hasPractice &&
              hasIndependent &&
              hasQuiz) {
            completedLessons++;
          }
        }
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
    // If cache is empty, refresh it first
    if (globalProgressCache.isEmpty) {
      await refreshGlobalProgressCache();
    }

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

    // Per-grade total completion trackers
    Map<String, int> gradeTotalLessons = {};
    Map<String, int> gradeCompletedLessons = {};

    // Per-grade per-subject trackers for averaging
    // Key: "$grade|$title"
    Map<String, int> gradeSubjectTotal = {};
    Map<String, int> gradeSubjectCompleted = {};

    for (var grade in grades) {
      gradeTotalLessons[grade] = 0;
      gradeCompletedLessons[grade] = 0;

      for (var title in courseTitles) {
        final key = "$grade|$title";
        final strands = _generateDummyStrands(title, grade, includeBece: false);
        int courseTotal = 0;
        int courseCompleted = 0;

        for (var strand in strands) {
          for (var subStrand in strand.subStrands) {
            for (var lesson in subStrand.lessons) {
              courseTotal++;

              // Use globalProgressCache to check completeness synchronously
              final String normalizedTopic = lesson.topic.trim().toLowerCase();
              final lessonProgress = globalProgressCache
                  .where(
                    (p) => p.lessonId.trim().toLowerCase() == normalizedTopic,
                  )
                  .toList();

              final hasGetReady = lessonProgress.any(
                (p) =>
                    p.activityType.toLowerCase() == 'get_ready' &&
                    p.isCompleted,
              );
              final hasLearn = lessonProgress.any(
                (p) =>
                    p.activityType.toLowerCase() == 'learn' &&
                    p.subActivity ==
                        'part_${String.fromCharCode(96 + lesson.learn.parts.length)}' &&
                    p.isCompleted,
              );
              final hasPractice = lessonProgress.any(
                (p) =>
                    p.activityType.toLowerCase() == 'guided_practice' &&
                    p.isCompleted,
              );
              final hasIndependent = lessonProgress.any(
                (p) =>
                    p.activityType.toLowerCase() == 'independent' &&
                    p.isCompleted,
              );
              final hasQuiz = lessonProgress.any(
                (p) => p.activityType.toLowerCase() == 'quiz' && p.isCompleted,
              );

              if (hasGetReady &&
                  hasLearn &&
                  hasPractice &&
                  hasIndependent &&
                  hasQuiz) {
                courseCompleted++;
              }
            }
          }
        }

        overallTotalLessons += courseTotal;
        overallCompletedLessons += courseCompleted;

        gradeTotalLessons[grade] =
            (gradeTotalLessons[grade] ?? 0) + courseTotal;
        gradeCompletedLessons[grade] =
            (gradeCompletedLessons[grade] ?? 0) + courseCompleted;

        gradeSubjectTotal[key] = courseTotal;
        gradeSubjectCompleted[key] = courseCompleted;
      }
    }

    for (var grade in grades) {
      final total = gradeTotalLessons[grade] ?? 0;
      final completed = gradeCompletedLessons[grade] ?? 0;
      gradeTotalCompletion[grade] = total > 0 ? completed / total : 0.0;
    }

    // "All" = average of the three grade completion percentages
    double sum = 0.0;
    for (var grade in grades) {
      sum += gradeTotalCompletion[grade] ?? 0.0;
    }
    globalTotalCompletion.value = sum / grades.length;

    // "All" subject progress = average of the three grade-level percentages per subject
    for (var title in courseTitles) {
      double subjectSum = 0.0;
      for (var grade in grades) {
        final key = "$grade|$title";
        final total = gradeSubjectTotal[key] ?? 0;
        final completed = gradeSubjectCompleted[key] ?? 0;
        subjectSum += total > 0 ? completed / total : 0.0;
      }
      globalSubjectProgress[title] = subjectSum / grades.length;
    }
  }

  final _progressRepo = Get.find<ProgressRepository>();

  final RxList<Course> courses = <Course>[].obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.isRegistered<ProfileController>()) {
      ever(Get.find<ProfileController>().userInfo, (_) {
        syncSelectedGradeWithUserProfile();
      });
    }
    syncSelectedGradeWithUserProfile();

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
      "Career",
      "Computing",
      "Creative Arts",
      "French",
    ]) {
      selectedActivityStatsFilters[title] = "Today";
    }
  }

  @override
  void onClose() {
    strandSearchController.dispose();
    super.onClose();
  }

  Future<void> refreshCourses() async {
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
      Course(
        title: "CAREER",
        image: 'assets/images/careerIcon.png',
        color: const Color(0xFFEAFBFD),
        textColor: const Color(0xFF149BAD),
        strands: _generateDummyStrands(
          "CAREER",
          selectedGrade.value,
          includeBece: false,
        ),
      ),
      Course(
        title: "COMPUTING",
        image: 'assets/images/tech_icon.png',
        color: const Color(0xFFFFF4EA),
        textColor: const Color(0xFFB75235),
        strands: _generateDummyStrands(
          "COMPUTING",
          selectedGrade.value,
          includeBece: false,
        ),
      ),
      Course(
        title: "CREATIVE ARTS",
        image: 'assets/images/arts_icon.png',
        color: const Color(0xFFFAF2FF),
        textColor: const Color(0xFF7132A8),
        strands: _generateDummyStrands(
          "CREATIVE ARTS",
          selectedGrade.value,
          includeBece: false,
        ),
      ),
      Course(
        title: "FRENCH",
        image: 'assets/images/french_icon.png',
        color: const Color(0xFFFFF0F0),
        textColor: const Color(0xFFB52C2C),
        strands: _generateDummyStrands(
          "FRENCH",
          selectedGrade.value,
          includeBece: false,
        ),
      ),
    ]);
    await loadActualProgress();
  }

  Future<void> loadActualProgress() async {
    final dateFormat = DateFormat('d MMMM, y h:mm a');
    final bool isGradeLocked = !isGradeUnlocked(selectedGrade.value);

    // Build a complete updated list of courses to update RxList once at the end
    final List<Course> updatedAllCourses = [];

    // Make sure cache is refreshed first
    await refreshGlobalProgressCache();

    final beceRepo = Get.find<BeceProgressRepository>();
    final allBeceProgress = await beceRepo.getAllProgress();

    for (var course in courses) {
      final List<Strand> updatedStrands = [];

      for (var strand in course.strands) {
        final List<SubStrand> updatedSubStrands = [];
        bool allLessonsInStrandCompleted = true;

        for (var subStrand in strand.subStrands) {
          final List<Lesson> updatedLessons = [];
          for (var lesson in subStrand.lessons) {
            if (strand.title == "BECE") {
              final String normalStrandTitle = subStrand.title;
              final String normalSubStrandTitle = lesson.topic;

              final beceObjectives = allBeceProgress.firstWhereOrNull(
                (p) =>
                    p.courseName.toLowerCase() == course.title.toLowerCase() &&
                    p.strandName.toLowerCase() ==
                        normalStrandTitle.toLowerCase() &&
                    p.subStrandName.toLowerCase() ==
                        normalSubStrandTitle.toLowerCase() &&
                    p.gradeName == selectedGrade.value &&
                    p.activityType == 'objectives' &&
                    p.lastAttemptScore != null &&
                    p.lastQuestionIndex != null &&
                    p.totalQuestions != null &&
                    p.totalQuestions! > 0 &&
                    p.lastQuestionIndex! >= p.totalQuestions!,
              );

              final beceTheory = allBeceProgress.firstWhereOrNull(
                (p) =>
                    p.courseName.toLowerCase() == course.title.toLowerCase() &&
                    p.strandName.toLowerCase() ==
                        normalStrandTitle.toLowerCase() &&
                    p.subStrandName.toLowerCase() ==
                        normalSubStrandTitle.toLowerCase() &&
                    p.gradeName == selectedGrade.value &&
                    p.activityType == 'theory' &&
                    p.lastQuestionIndex != null &&
                    p.totalQuestions != null &&
                    p.totalQuestions! > 0 &&
                    p.lastQuestionIndex! >= p.totalQuestions!,
              );

              String? quizScoreStr;
              String? quizOriginalScoreStr;

              if (beceObjectives != null &&
                  beceObjectives.lastAttemptScore != null &&
                  beceObjectives.totalQuestions != null &&
                  beceObjectives.totalQuestions! > 0) {
                double lastScore = (beceObjectives.lastAttemptScore ?? 0)
                    .toDouble();
                double totalQ = (beceObjectives.totalQuestions ?? 1).toDouble();
                double pct = (totalQ > 0 && lastScore <= totalQ)
                    ? (lastScore / totalQ) * 100
                    : lastScore;
                int percentage = pct.round().clamp(0, 100);
                quizScoreStr = "$percentage%";

                if (beceObjectives.firstAttemptScore != null) {
                  double firstScore = beceObjectives.firstAttemptScore!
                      .toDouble();
                  double origPct = (totalQ > 0 && firstScore <= totalQ)
                      ? (firstScore / totalQ) * 100
                      : firstScore;
                  int originalPercentage = origPct.round().clamp(0, 100);
                  quizOriginalScoreStr = "$originalPercentage%";
                }
              }

              final bool hasQuiz = lesson.quiz.questions.isNotEmpty;
              final bool hasPractice = lesson.practice.questions.isNotEmpty;

              final isLessonCompleted = (hasQuiz || hasPractice)
                  ? ((!hasQuiz || beceObjectives != null) &&
                        (!hasPractice || beceTheory != null))
                  : true;

              if (!isLessonCompleted) {
                allLessonsInStrandCompleted = false;
              }

              updatedLessons.add(
                lesson.copyWith(
                  quizDoneDate: beceObjectives != null
                      ? dateFormat.format(beceObjectives.doneDate)
                      : null,
                  quizScore: quizScoreStr,
                  quizOriginalScore: quizOriginalScoreStr,
                  practiceDoneDate: beceTheory != null
                      ? dateFormat.format(beceTheory.doneDate)
                      : null,
                  courseName: course.title,
                  strandName: strand.title,
                  subStrandName: subStrand.title,
                  lessonNumber: (updatedLessons.length + 1).toString(),
                  gradeName: selectedGrade.value,
                  isLocked: isGradeLocked,
                  isCompleted: isLessonCompleted,
                ),
              );
            } else {
              // Trim topic for robust database matching
              final String normalizedTopic = lesson.topic.trim();

              // Fetch all progress for this lesson from cache to avoid multiple queries
              final lessonProgress = globalProgressCache
                  .where(
                    (p) =>
                        p.lessonId.trim().toLowerCase() ==
                        normalizedTopic.toLowerCase(),
                  )
                  .toList();

              // Filter for each activity type (case-insensitive check for safety)
              final getReadyProgress = lessonProgress
                  .where(
                    (p) =>
                        p.activityType.toLowerCase() == 'get_ready' &&
                        p.isCompleted,
                  )
                  .toList();
              final learnProgress = lessonProgress
                  .where(
                    (p) =>
                        p.activityType.toLowerCase() == 'learn' &&
                        p.isCompleted,
                  )
                  .toList();

              ActivityProgress? practice;
              ActivityProgress? independent;
              ActivityProgress? quiz;

              for (var p in lessonProgress) {
                if (!p.isCompleted) continue;
                final type = p.activityType.toLowerCase();
                if (type == 'guided_practice') {
                  if (practice == null ||
                      p.lastUpdated.toUtc().isAfter(
                        practice.lastUpdated.toUtc(),
                      )) {
                    practice = p;
                  }
                } else if (type == 'independent') {
                  if (independent == null ||
                      p.lastUpdated.toUtc().isAfter(
                        independent.lastUpdated.toUtc(),
                      )) {
                    independent = p;
                  }
                } else if (type == 'quiz') {
                  if (quiz == null ||
                      p.lastUpdated.toUtc().isAfter(quiz.lastUpdated.toUtc())) {
                    quiz = p;
                  }
                }
              }

              // Get latest update for Get Ready and Learn (if any part is done)
              ActivityProgress? latestGetReady;
              if (getReadyProgress.isNotEmpty) {
                latestGetReady = getReadyProgress.reduce(
                  (a, b) => a.lastUpdated.toUtc().isAfter(b.lastUpdated.toUtc())
                      ? a
                      : b,
                );
              }

              ActivityProgress? latestLearn;
              if (learnProgress.isNotEmpty) {
                latestLearn = learnProgress.reduce(
                  (a, b) => a.lastUpdated.toUtc().isAfter(b.lastUpdated.toUtc())
                      ? a
                      : b,
                );
              }

              String? practiceScoreStr;
              String? practiceOriginalScoreStr;
              if (independent != null &&
                  independent.score != null &&
                  independent.totalQuestions != null &&
                  independent.totalQuestions! > 0) {
                double scoreVal = (independent.score ?? 0).toDouble();
                double totalQ = (independent.totalQuestions ?? 1).toDouble();
                double pct = (totalQ > 0 && scoreVal <= totalQ)
                    ? (scoreVal / totalQ) * 100
                    : scoreVal;
                int percentage = pct.round().clamp(0, 100);
                practiceScoreStr = "$percentage%";

                if (independent.originalScore != null) {
                  double origScore = independent.originalScore!.toDouble();
                  double origPct = (totalQ > 0 && origScore <= totalQ)
                      ? (origScore / totalQ) * 100
                      : origScore;
                  int originalPercentage = origPct.round().clamp(0, 100);
                  practiceOriginalScoreStr = "$originalPercentage%";
                }
              }

              String? quizScoreStr;
              String? quizOriginalScoreStr;
              if (quiz != null &&
                  quiz.score != null &&
                  quiz.totalQuestions != null &&
                  quiz.totalQuestions! > 0) {
                double scoreVal = (quiz.score ?? 0).toDouble();
                double totalQ = (quiz.totalQuestions ?? 1).toDouble();
                double pct = (totalQ > 0 && scoreVal <= totalQ)
                    ? (scoreVal / totalQ) * 100
                    : scoreVal;
                int percentage = pct.round().clamp(0, 100);
                quizScoreStr = "$percentage%";

                if (quiz.originalScore != null) {
                  double origScore = quiz.originalScore!.toDouble();
                  double origPct = (totalQ > 0 && origScore <= totalQ)
                      ? (origScore / totalQ) * 100
                      : origScore;
                  int originalPercentage = origPct.round().clamp(0, 100);
                  quizOriginalScoreStr = "$originalPercentage%";
                }
              }

              // A lesson is completed if all contents and quiz are done
              // Note: For 'learn', we require the last part for full lesson completion
              final hasFinishedLastLearnPart = learnProgress.any(
                (p) =>
                    p.subActivity ==
                    'part_${String.fromCharCode(96 + lesson.learn.parts.length)}',
              );

              final isLessonCompleted =
                  latestGetReady != null &&
                  hasFinishedLastLearnPart &&
                  practice != null &&
                  independent != null &&
                  quiz != null;

              if (!isLessonCompleted) {
                allLessonsInStrandCompleted = false;
              }

              updatedLessons.add(
                lesson.copyWith(
                  getReadyDoneDate: latestGetReady != null
                      ? dateFormat.format(latestGetReady.lastUpdated)
                      : null,
                  learnDoneDate: latestLearn != null
                      ? dateFormat.format(latestLearn.lastUpdated)
                      : null,
                  practiceDoneDate: () {
                    if (independent != null && practice != null) {
                      return dateFormat.format(
                        independent.lastUpdated.toUtc().isAfter(
                              practice.lastUpdated.toUtc(),
                            )
                            ? independent.lastUpdated
                            : practice.lastUpdated,
                      );
                    } else if (independent != null) {
                      return dateFormat.format(independent.lastUpdated);
                    } else if (practice != null) {
                      return dateFormat.format(practice.lastUpdated);
                    }
                    return null;
                  }(),
                  practiceScore: practiceScoreStr,
                  practiceOriginalScore: practiceOriginalScoreStr,
                  quizDoneDate: quiz != null
                      ? dateFormat.format(quiz.lastUpdated)
                      : null,
                  quizScore: quizScoreStr,
                  quizOriginalScore: quizOriginalScoreStr,
                  courseName: course.title,
                  strandName: strand.title,
                  subStrandName: subStrand.title,
                  lessonNumber: (updatedLessons.length + 1).toString(),
                  gradeName: selectedGrade.value,
                  isLocked: isGradeLocked,
                  isCompleted: isLessonCompleted,
                ),
              );
            }
          }
          updatedSubStrands.add(subStrand.copyWith(lessons: updatedLessons));
        }

        updatedStrands.add(
          strand.copyWith(
            subStrands: updatedSubStrands,
            isCompleted: allLessonsInStrandCompleted,
            isLocked: isGradeLocked,
          ),
        );
      }
      updatedAllCourses.add(course.copyWith(strands: updatedStrands));
    }

    // Update the observable list once at the end
    courses.assignAll(updatedAllCourses);

    // Explicitly refresh selectedCourse to trigger UI update
    if (selectedCourse.value != null) {
      final courseTitle = selectedCourse.value!.title;
      final updatedCourse = courses.firstWhereOrNull(
        (c) => c.title == courseTitle,
      );
      if (updatedCourse != null) {
        selectedCourse.value = updatedCourse;
        selectedCourse.refresh();
      }
    }
    courses.refresh();
    await calculateGlobalProgress();
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
      case "Past 1 week":
        startTime = now.subtract(const Duration(days: 7));
        startTime = DateTime(startTime.year, startTime.month, startTime.day);
        break;
      case "Past 1 Month":
        startTime = now.subtract(const Duration(days: 30));
        startTime = DateTime(startTime.year, startTime.month, startTime.day);
        break;
      case "Past 3 Months":
        startTime = now.subtract(const Duration(days: 90));
        startTime = DateTime(startTime.year, startTime.month, startTime.day);
        break;
      case "Past 6 Months":
        startTime = now.subtract(const Duration(days: 180));
        startTime = DateTime(startTime.year, startTime.month, startTime.day);
        break;
      case "Past 1 Year":
        startTime = now.subtract(const Duration(days: 365));
        startTime = DateTime(startTime.year, startTime.month, startTime.day);
        break;
      default:
        startTime = now.subtract(const Duration(days: 7));
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
      final strands = _generateDummyStrands(title, grade, includeBece: false);
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
    final practiceRecords = courseProgress
        .where(
          (p) =>
              p.activityType.toLowerCase() == 'independent' ||
              p.activityType.toLowerCase() == 'guided_practice',
        )
        .toList();
    int practicePercentage = 0;
    if (practiceRecords.isNotEmpty) {
      double totalPct = 0;
      int count = 0;
      for (var p in practiceRecords) {
        final totalQ = (p.totalQuestions ?? 0).toDouble();
        final scoreVal = (p.score ?? 0).toDouble();
        if (totalQ > 0 || scoreVal > 0) {
          double pct;
          if (totalQ > 0 && scoreVal <= totalQ) {
            pct = (scoreVal / totalQ) * 100;
          } else {
            pct = scoreVal;
          }
          totalPct += pct.clamp(0.0, 100.0);
          count++;
        }
      }
      if (count > 0) {
        practicePercentage = (totalPct / count).round().clamp(0, 100);
      }
    }

    // Quiz
    final quizRecords = courseProgress
        .where((p) => p.activityType.toLowerCase() == 'quiz')
        .toList();
    int quizPercentage = 0;
    if (quizRecords.isNotEmpty) {
      double totalPct = 0;
      int count = 0;
      for (var p in quizRecords) {
        final totalQ = (p.totalQuestions ?? 0).toDouble();
        final scoreVal = (p.score ?? 0).toDouble();
        if (totalQ > 0 || scoreVal > 0) {
          double pct;
          if (totalQ > 0 && scoreVal <= totalQ) {
            pct = (scoreVal / totalQ) * 100;
          } else {
            pct = scoreVal;
          }
          totalPct += pct.clamp(0.0, 100.0);
          count++;
        }
      }
      if (count > 0) {
        quizPercentage = (totalPct / count).round().clamp(0, 100);
      }
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

    String practicePercent = "$practicePercentage%";
    String quizPercent = "$quizPercentage%";

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

    final filter = selectedActivityStatsFilters[title] ?? "Today";

    switch (filter) {
      case "Today":
        startTime = DateTime(now.year, now.month, now.day);
        daysInPeriod = 1;
        break;
      case "Past 1 week":
        startTime = now.subtract(const Duration(days: 7));
        daysInPeriod = 7;
        break;
      case "Past 1 Month":
        startTime = now.subtract(const Duration(days: 30));
        daysInPeriod = 30;
        break;
      case "Past 3 Months":
        startTime = now.subtract(const Duration(days: 90));
        daysInPeriod = 90;
        break;
      case "Past 6 Months":
        startTime = now.subtract(const Duration(days: 180));
        daysInPeriod = 180;
        break;
      case "Past 1 Year":
        startTime = now.subtract(const Duration(days: 365));
        daysInPeriod = 365;
        break;
      default:
        startTime = DateTime(now.year, now.month, now.day);
        daysInPeriod = 1;
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
      final strands = _generateDummyStrands(title, grade, includeBece: false);
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
    final quizRecords = courseProgress
        .where((p) => p.activityType == 'quiz')
        .toList();
    double avgQuizScore = 0;
    if (quizRecords.isNotEmpty) {
      double totalPercent = 0;
      for (var q in quizRecords) {
        totalPercent += (q.score ?? 0) / (q.totalQuestions ?? 1) * 100;
      }
      avgQuizScore = totalPercent / quizRecords.length;
    }

    // Calculate total minutes based on activityMinutes
    int totalMinutes = 0;
    for (var p in courseProgress) {
      // Treat 0 or 30 as legacy/placeholder and apply new rules
      if (p.activityMinutes > 0 && p.activityMinutes != 30) {
        totalMinutes += p.activityMinutes;
      } else {
        // Apply new logic: 20 mins for core tasks, 2 mins for others
        if (p.activityType == 'quiz' ||
            p.activityType == 'independent' ||
            p.activityType == 'guided_practice') {
          totalMinutes += 20;
        } else {
          totalMinutes += 2;
        }
      }
    }
    final totalHours = (totalMinutes / 60).toStringAsFixed(1);
    final avgDailyHours = (totalMinutes / (60 * daysInPeriod)).toStringAsFixed(
      2,
    );

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
        final strands = _generateDummyStrands(title, grade, includeBece: false);
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
        // Treat 0 or 30 as legacy/placeholder and apply new rules
        if (p.activityMinutes > 0 && p.activityMinutes != 30) {
          subjectMinutes += p.activityMinutes;
        } else {
          // Apply new logic: 20 mins for core tasks, 2 mins for others
          if (p.activityType == 'quiz' ||
              p.activityType == 'independent' ||
              p.activityType == 'guided_practice') {
            subjectMinutes += 20;
          } else {
            subjectMinutes += 2;
          }
        }
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
      final strands = _generateDummyStrands(title, grade, includeBece: false);
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
      final quizRecords = dayProgress
          .where((p) => p.activityType == 'quiz')
          .toList();
      double score = 0;
      if (quizRecords.isNotEmpty) {
        double total = 0;
        for (var q in quizRecords) {
          total += (q.score ?? 0) / (q.totalQuestions ?? 1) * 100;
        }
        score = total / quizRecords.length;
      }

      int totalMins = 0;
      for (var p in dayProgress) {
        // Treat 0 or 30 as legacy/placeholder and apply new rules
        if (p.activityMinutes > 0 && p.activityMinutes != 30) {
          totalMins += p.activityMinutes;
        } else {
          if (p.activityType == 'quiz' ||
              p.activityType == 'independent' ||
              p.activityType == 'guided_practice') {
            totalMins += 20;
          } else {
            totalMins += 2;
          }
        }
      }

      final hours = totalMins / 60.0;

      dailyStats.add({
        "day": DateFormat('E').format(date),
        "count": count.toDouble(),
        "dailyHours": hours,
        "totalHours": hours,
        "quizScore": score,
      });
    }

    return dailyStats;
  }

  List<Strand> _generateDummyStrands(
    String courseTitle,
    String grade, {
    bool includeBece = true,
  }) {
    final Map<String, List<Map<String, dynamic>>> courseData = {
      "English": [
        {
          "subtitle": "ORAL LANGUAGE",
          "subStrands": [
            {
              "subtitle": "CONVERSATION / EVERYDAY DISCOURSE",
              "topics": [
                "Conversation and Everyday Discourse",
                "Asking Questions to Elicit Elaboration",
                "Using Appropriate Language to Describe Experiences",
                "Giving and Following Direction",
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
                "THE FACT-CHECKING DETECTIVE (NON-FICTION ANALYSIS)",
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
                "Nouns and Irregular Plurals",
                "Types of Pronouns",
                "Adjectives and Sense Verbs",
                "Verb Tenses and Aspects (Present Tense)",
                "Verb Tenses and Aspects (Past Tense)",
                "Adverbs",
                "Conjunctions and Linkers",
                "Prepositions and Complex Prepositions",
                "Determiners",
                "Subject and Predicate",
                "Compound Sentences",
                "Dependent and Independent Clauses",
                "Mastering Conditional Sentences (Type 1)",
                "Active and Passive Voice",
                "Reported Speech (Direct and Indirect)",
                "Question Tags",
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
                "DESCRIPTIVE WRITING – PAINTING WITH WORDS",
                "NARRATIVE WRITING – TELLING A STORY",
                "GIVING DIRECTIONS AND INSTRUCTIONS",
                "PERSUASIVE WRITING – THE POWER OF ARGUMENT",
                "EXPOSITORY WRITING – NOTICES AND EXPLANATIONS",
              ],
            },
            {
              "subtitle": "TEXT TYPES AND PURPOSES",
              "topics": [
                "WRITING PERSONAL NARRATIVES WITH SENSORY LANGUAGE",
                "CREATING PERSUASIVE ADVERTISEMENTS",
                "WRITING PROCESS PARAGRAPHS",
                "WRITING INFORMAL LETTERS",
                "FORMAL WRITING (APPLICATIONS AND OFFICIAL LETTERS)",
                "TAKING NOTES FOR ACADEMIC PURPOSES",
                "DESIGNING NOTICES AND POSTERS",
                "WRITING ARTICLES FOR PUBLICATION",
                "CREATING DIALOGUES",
              ],
            },
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
                "LITERARY DEVICES IN TEXTS",
                "ORAL LITERATURE (NARRATIVES, POETRY, AND DRAMA)",
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
                "The Orderly Arrangement of the Periodic Table",
              ],
            },
            {
              "subtitle": "LIVING CELLS",
              "topics": [
                "THE STRUCTURE AND FUNCTION OF ANIMAL CELLS",
                "THE STRUCTURE AND FUNCTION OF PLANT CELLS",
              ],
            },
          ],
        },
        {
          "subtitle": "CYCLES",
          "subStrands": [
            {
              "subtitle": "EARTH SCIENCE",
              "topics": [
                "Human Growth Stages",
                "The Importance of the Water Cycle",
              ],
            },
            {
              "subtitle": "LIFE CYCLE OF ORGANISMS",
              "topics": [
                "The Life Cycle of a Housefly",
                "The Housefly as a Menace and Control Methods",
              ],
            },
            {
              "subtitle": "CROP PRODUCTION",
              "topics": [
                "Sources of Plant Nutrients",
                "Physical Characteristics and Application of Plant Nutrients",
              ],
            },
            {
              "subtitle": "ANIMAL PRODUCTION",
              "topics": [
                "Domestic Animals and Their Breeds",
                "Similarities and Differences Among Domestic Animals",
                "Domestic and Commercial Uses of Animals",
                "Observing and Comparing Animal Uses",
              ],
            },
          ],
        },
        {
          "subtitle": "SYSTEMS",
          "subStrands": [
            {
              "subtitle": "THE HUMAN BODY SYSTEM",
              "topics": [
                "The Concept of Food and Why We Eat",
                "Stages of Digestion in Humans",
                "End Products of Digestion and Absorption",
              ],
            },
            {
              "subtitle": "THE SOLAR SYSTEM",
              "topics": [
                "The Inner Planets and Their Properties",
                "Properties and Motions of Mercury and Venus",
                "Properties and Motions of Earth and Mars",
                "The Outer Planets (The Gas Giants)",
                "Building a Model of the Solar System",
              ],
            },
            {
              "subtitle": "Ecosystem",
              "topics": [
                "Ecosystem as a Self-Sustaining Unit",
                "Identifying And Listing the Components (Biotic and Abiotic) of Each Category of Ecosystem.",
                "Differentiating Among Organisms in the Different Ecosystems (Terrestrial, Aquatic, and Arboreal).",
                "How The Components (Biotic and Abiotic) of the Different Ecosystems Affect One Another.",
              ],
            },
            {
              "subtitle": "Farming Systems",
              "topics": [
                "Differences Among Farming Systems",
                "Categorising Farming Systems",
                "Usefulness of Different Farming Systems",
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
              "subtitle": "ENERGY",
              "topics": [
                "Forms of Energy and their Relationship",
                "Daily Applications of Energy and Factors affecting PE and KE",
                "Mathematical Expressions for Potential and Kinetic Energy",
                "Heat Transfer in Various Media (Conduction, Convection, and Radiation)",
                "Characteristics of Light (Straight-line travel, Reflection, and Refraction)",
                "Dispersion of Light",
              ],
            },
            {
              "subtitle": "ELECTRICITY AND ELECTRONICS",
              "topics": [
                "FORMS OF ELECTRICITY GENERATION",
                "IMPACT OF ELECTRICITY GENERATION ON THE ENVIRONMENT",
                "ASSEMBLING BASIC ELECTRONIC COMPONENTS",
                "COMPONENT FUNCTIONS AND INTERDEPENDENCE",
                "ADVANCED COMPONENT FUNCTIONS (RESISTORS, DIODES, AND INDUCTORS)",
              ],
            },
            {
              "subtitle": "CONVERSION AND CONSERVATION OF ENERGY",
              "topics": [
                "The Principle of Conservation and Conversion of Energy",
                "Everyday Conversion of Energy into Useable Forms",
                "Conserving Energy for the Future",
              ],
            },
            {
              "subtitle": "FORCE AND MOTION",
              "topics": [
                "Unbalanced Forces and Inertia",
                "Newton’s First Law of Motion",
                "Applications of Newton’s First Law",
                "Behavior of Magnets and Their Uses",
                "Identifying Simple Machines",
                "Types and Functions of Levers",
                "Work Input, Output, and Efficiency",
              ],
            },
            {
              "subtitle": "AGRICULTURAL TOOLS",
              "topics": [
                "Rules for Handling and Maintaining Tools",
                "Applying Tool Maintenance in the Community",
              ],
            },
          ],
        },
        {
          "subtitle": "HUMANS AND THE ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "WASTE MANAGEMENT",
              "topics": [
                "Introduction to Waste and Management Practices",
                "Planning and Reporting a Clean-up Project",
                'The Science of Waste and Disposal',
              ],
            },
            {
              "subtitle": "HUMAN HEALTH",
              "topics": [
                "Food Nutrients and Deficiency Diseases",
                "Viral Diseases (COVID-19, Ebola, and H1N1)",
              ],
            },
            {
              "subtitle": "SCIENCE AND INDUSTRY",
              "topics": ["Careers in Science and Great Scientists"],
            },
            {
              "subtitle": "CLIMATE CHANGE AND GREEN ECONOMY",
              "topics": [
                "Sustainable Energy Choices and Scientific Ideas",
                "The Greenhouse Effect and How to Minimise It",
                "Designing a Project for Local Energy Sustainability",
              ],
            },
            {
              "subtitle": "UNDERSTANDING THE ENVIRONMENT",
              "topics": [
                "Plants and Animals in Different Landforms",
                "Nature of Associations among Plants and Animals",
              ],
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
              "topics": ["Fractions, Decimals, and Percentages"],
            },
            {
              "subtitle": "Number: Ratios and Proportion",
              "topics": ["Multi-Step Ratio and Proportional Relationships"],
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
              "topics": ["THE ARCHITECTURE OF ANGLES"],
            },
            {
              "subtitle": "Measurement",
              "topics": [
                "The Complete Guide to Measurement, Area, and Vectors",
              ],
            },
            {
              "subtitle": "Position and Transformation",
              "topics": ["The Complete Guide to Transformation"],
            },
          ],
        },
        {
          "subtitle": "HANDLING DATA",
          "subStrands": [
            {
              "subtitle": "Data",
              "topics": ["Comprehensive Sub-strand Review (The Data Cycle)"],
            },
            {
              "subtitle": "Chance or Probability",
              "topics": ["The Power of Probability"],
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
            {
              "subtitle": "TOURISM",
              "topics": [
                "THE ROLE OF TOURISM AND LEISURE IN GHANA’S DEVELOPMENT",
              ],
            },
          ],
        },
        {
          "subtitle": "NATIONHOOD",
          "subStrands": [
            {
              "subtitle": "INDEPENDENT GHANA",
              "topics": [
                "THE ACCELERATION OF INDEPENDENCE AFTER THE 1948 RIOTS,",
                "THE FORMATION OF THE CONVENTION PEOPLE'S PARTY (1949)",
                "THE COUSSEY COMMITTEE AND THE ELECTIONS OF 1951, 1954, AND 1956",
                "THE NATURE OF GOVERNMENT FROM 1957 TO 1960",
              ],
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
      ..._additionalCourseData["JHS 1"]!,
    };

    final Map<String, List<Map<String, dynamic>>> jhs2CourseData = {
      "English": [
        {
          "subtitle": "ORAL LANGUAGE",
          "subStrands": [
            {
              "subtitle": "CONVERSATION AND EVERYDAY DISCOURSE",
              "topics": [
                "EFFECTIVE TURN-TAKING IN CONVERSATION",
                "USING APPROPRIATE REGISTER (INFORMAL VS. FORMAL)",
                "ELABORATING IN CONVERSATION",
                "DESCRIBING FAMILIAR PLACES AND EVENTS",
                "GIVING AND FOLLOWING COMPLEX DIRECTIONS",
              ],
            },
            {
              "subtitle": "LISTENING COMPREHENSION",
              "topics": [
                "Identifying Key Information in Dialogues",
                "Sharing Opinions and Discussing Ideas",
              ],
            },
            {
              "subtitle": "ENGLISH SOUNDS",
              "topics": [
                "MASTERING PLOSIVE CONSONANTS",
                "MASTERING FRICATIVE CONSONANTS",
                "NASALS AND AFFRICATES",
              ],
            },
          ],
        },
        {
          "subtitle": "READING",
          "subStrands": [
            {
              "subtitle": "COMPREHENSION",
              "topics": [
                "USING MONITORING AND MENTAL VISUALISATION",
                "USING PREDICTION TO UNDERSTAND NON-FICTION",
                "GENERATING AND ANSWERING QUESTIONS",
                "IDENTIFYING MAIN TEXT FEATURES OF NON-FICTION",
                "USING CONTEXTUAL CLUES TO ANALYZE TEXT",
                "READING SILENTLY AND ANSWERING COMPLEX QUESTIONS",
                "PROVIDING EVIDENCE AND SHOWING MASTERY",
                "GENERATING THEMES AND APPLYING THEM TO SITUATIONS",
                "EXAMINING CONNECTIONS AND OTHER POINTS OF VIEW",
                "USING DERIVATION TO EXPAND VOCABULARY",
                "INTEGRATING GRADE-LEVEL VOCABULARY IN CONTEXT",
                "DETERMINING THE CENTRAL IDEA AND SUPPORTING IDEAS",
              ],
            },
          ],
        },
        {
          "subtitle": "GRAMMAR AND GRAMMAR USAGE",
          "subStrands": [
            {
              "subtitle": "GRAMMAR",
              "topics": [
                "SINGULAR AND PLURAL FORMS OF COMPOUND NOUNS",
                "RELATIVE PRONOUNS",
                "DEMONSTRATE COMMAND OF THE USE OF ADJECTIVES IN DISCOURSE",
                "VERB FORMS FOR FUTURE EVENTS",
                "KNOWLEDGE OF ADVERBS",
                "USE OF PREPOSITIONS",
                "REPORTED SPEECH",
                "QUESTION TAGS",
              ],
            },
            {
              "subtitle": "PUNCTUATION AND CAPITALISATION",
              "topics": ["USING COLONS, SEMI-COLONS, AND APOSTROPHES"],
            },
            {
              "subtitle": "VOCABULARY",
              "topics": ["Word Relationships and Connotations"],
            },
          ],
        },
        {
          "subtitle": "WRITING",
          "subStrands": [
            {
              "subtitle": "PRODUCTION AND DISTRIBUTION OF WRITING",
              "topics": [
                "CREATING COHESIVE PARAGRAPHS",
                "INTRODUCTORY PARAGRAPHS AND HOOKS",
                "EXPANDING SENTENCES WITH PHRASES AND CLAUSES",
              ],
            },
            {
              "subtitle": "TEXT TYPES AND PURPOSES",
              "topics": [
                "WRITING PERSONAL NARRATIVES",
                "USING SENSORY LANGUAGE TO DESCRIBE PLACES AND EVENTS",
                "CREATING SHORTER TRANSACTIONAL TEXTS (ADVERTISEMENTS AND DIARIES)",
                "PROBLEM AND SOLUTION PARAGRAPHS",
                "FORMAL WRITING (BUSINESS LETTERS AND EMAILS)",
                "COMPOSING NOTES, BROCHURES, AND FLYERS",
                "WRITING ARTICLES FOR SCHOOL MAGAZINES",
                "CREATING DIALOGUES",
                "COMPOSING SPEECHES",
              ],
            },
            {
              "subtitle": "BUILDING AND PRESENT KNOWLEDGE",
              "topics": ["USING NON-TEXT SOURCES IN WRITING"],
            },
          ],
        },
        {
          "subtitle": "LITERATURE",
          "subStrands": [
            {
              "subtitle": "NARRATIVE",
              "topics": [
                "THE POWER OF UNITY IN THE OLD MAN AND HIS CHILDREN",
                " EXPLORING \"THE COLOUR OF GOD\" BY V. B. AAKYE",
                "ANANSE THE TRICKSTER IN THE MARRIAGE OF ANANSEWA",
                "FEMALE EMPOWERMENT IN \"THE GIRL WHO CAN\"",
                "HIDDEN POTENTIAL IN \"DESERT RIVERS\" BY LADE WOSORNU",
                "UNIVERSAL LOVE IN \"THE COLOUR OF GOD\" BY V. B. AAKYE",
                "OVERCOMING PROCRASTINATION IN \"SCRIBBLER’S DREAM\" BY LAWRENCE DARMANI",
                "CULTURAL CONFLICT IN \"THE DILEMMA OF A GHOST\" BY AMA ATA AIDOO",
                "INDEPENDENCE AND TRADITION IN \"ANOWA\" BY AMA ATA AIDOO",
                "THE POWER OF UNITY IN \"THE OLD MAN AND HIS CHILDREN\"",
                "CONSEQUENCES IN \"RIPPLES\" BY PETER PAUL ADOLINAMA",
                "SENSORY IMAGERY IN \"MAKOLA\" BY THERESA ENNIN",
                "STOICISM AND MISUNDERSTANDING IN \"A DAY’S WAIT\"",
                "METAPHORICAL TRIBUTES IN \"MAMA IS A SUNRISE\" BY EVELYN TOOLEY HUNT",
                "KINDNESS REWARDED IN \"THE GENEROUS HUNTER\"",
                "TOLERANCE AND NATURE IN \"A MINOR BIRD\" BY ROBERT FROST",
                "INTEGRITY AND HONESTY IN \"SOSU AND THE BUKARI BOYS\"",
                "GRIEF AND MEMORY IN \"A WREATH OF TEARS\" BY KOBENA EYI ACQUAH",
                "MOURNING A MOTHER IN \"SLEEP WITHOUT WAKE\" BY A. A. AMOAKO",
                "SURVIVAL AND RESILIENCE IN \"OLIVER TWIST\"",
                "RETURNING TO ROOTS IN \"HOME SWEET HOME\" BY KEN SARO-WIWA",
                "COMPASSION IN \"DEBBIE, SANDY AND PEPE\"",
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
                "Types of mixtures and their characteristics",
                "SEPARATING MIXTURES (PHYSICAL PROCESSES)",
                "ATOMIC STRUCTURE AND SUB-ATOMIC PARTICLES",
                "THE PERIODIC TABLE AND ELECTRON CONFIGURATION",
              ],
            },
            {
              "subtitle": "LIVING CELLS",
              "topics": [
                "Structure of Prokaryotic and Eukaryotic Cells",
                "Classifying Organisms and Impact on Human Health",
              ],
            },
          ],
        },
        {
          "subtitle": "CYCLES",
          "subStrands": [
            {
              "subtitle": "EARTH SCIENCE",
              "topics": [
                "The Process of the Carbon Cycle",
                "The Role of the Carbon Cycle to the Environment",
              ],
            },
            {
              "subtitle": "LIFE CYCLE OF ORGANISMS",
              "topics": [
                "The Life Cycle of the Anopheles Mosquito",
                "Impact and Control of the Anopheles Mosquito",
              ],
            },
            {
              "subtitle": "CROP PRODUCTION",
              "topics": [
                "Exploring Seed Beds in the Community",
                "Planting Different Types of Crops on Different Seed Beds",
                "Comparing Crop Growth in Different Seed Beds",
              ],
            },
            {
              "subtitle": "ANIMAL PRODUCTION",
              "topics": [
                "Types of Animal Feed",
                "Nutrients in Animal Feed (Proteins, Carbohydrates, and Fats)",
                "Vitamins and Minerals (The Protective Nutrients)",
              ],
            },
          ],
        },
        {
          "subtitle": "SYSTEMS",
          "subStrands": [
            {
              "subtitle": "THE HUMAN BODY SYSTEM",
              "topics": [
                "Parts of a Mammalian Tooth",
                "Types and Functions of Teeth",
                "Tooth and Gum Decay (Causes and Prevention)",
              ],
            },
            {
              "subtitle": "THE SOLAR SYSTEM",
              "topics": ["The Outer Planets and Their Properties"],
            },
            {
              "subtitle": "ECOSYSTEM",
              "topics": ["The Sun and Life on Earth"],
            },
            {
              "subtitle": "FARMING SYSTEMS",
              "topics": [
                "Types of crops, animals and land combinations for the different farming systems",
                "Usefulness of Different Crops and Animals in Farming Systems",
              ],
            },
          ],
        },
        {
          "subtitle": "FORCES AND ENERGY",
          "subStrands": [
            {
              "subtitle": "ENERGY",
              "topics": [
                "Energy Conversion",
                "The Importance of Energy Conversion",
                "Renewable and Non-Renewable Energy",
                "Managing Renewable Energy Sustainably",
                "Heat and Temperature",
              ],
            },
            {
              "subtitle": "ELECTRICITY AND ELECTRONICS",
              "topics": [
                "Electricity Transmission",
                "Capacitors and Electronic Components",
              ],
            },
            {
              "subtitle": "CONVERSION AND CONSERVATION OF ENERGY",
              "topics": [
                "Importance of Energy Conversion and Conservation",
                "Environmental Impact and Energy Auditing",
              ],
            },
            {
              "subtitle": "FORCES AND MOTION",
              "topics": [
                "Understanding Complex Machines",
                "Making Magnets and Their Applications",
                "Magnetic Force and Newton’s Second Law of Motion",
              ],
            },
            {
              "subtitle": "AGRICULTURAL TOOLS",
              "topics": [
                "Identifying Basic Agricultural Tools",
                "Using Basic Agricultural Tools Effectively",
              ],
            },
          ],
        },
        {
          "subtitle": "HUMANS AND THE ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "WASTE MANAGEMENT",
              "topics": [
                "Sustainable Waste Management Practices",
                "Applying Waste Management in the Community",
              ],
            },
            {
              "subtitle": "HUMAN HEALTH",
              "topics": [
                "Common Communicable Diseases",
                "Risk Factors of Communicable Diseases",
                "The Nature of Bacterial Diseases",
                "Prevention and Management of Bacterial Diseases",
              ],
            },
            {
              "subtitle": "SCIENCE AND INDUSTRY",
              "topics": [
                "The Link Between Science, Technology, and Innovation",
                "Technological Advancements and the Ghanaian Environment",
              ],
            },
            {
              "subtitle": "CLIMATE CHANGE AND GREEN ECONOMY",
              "topics": ["Understanding Climate Change and Its Signs"],
            },
            {
              "subtitle": "UNDERSTANDING THE ENVIRONMENT",
              "topics": [
                "Physical Properties of Soils",
                "How Plants Absorb Water and Nutrients",
                "Rocks as Origins of Soil",
              ],
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
                "Comprehensive Mastery of Fractions (Extended Edition)",
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
              "subtitle": "PATTERNS AND RELATIONS",
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
                "Mastering Independent Events and Probability (Extended Edition)",
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
                "Examining the Means of Conserving Energy",
              ],
            },
            {
              "subtitle": "MAPPING SKILLS",
              "topics": ["Sketching Maps and Interpreting Landscapes"],
            },
            {
              "subtitle": "UNDERSTANDING OUR NATURAL WORLD",
              "topics": [
                "Assess the significance of weather and climate to the environment",
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
                "Issues of Inheritance in Ghana",
              ],
            },
            {
              "subtitle": "POPULATION",
              "topics": ["Comparing Population Structures"],
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
                "VOLUNTEERISM AND COMMUNITY DEVELOPMENT",
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
              ],
            },
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
      ..._additionalCourseData["JHS 2"]!,
    };

    final Map<String, List<Map<String, dynamic>>> jhs3CourseData = {
      "English": [
        {
          "subtitle": "ORAL LANGUAGE",
          "subStrands": [
            {
              "subtitle": "CONVERSATION AND EVERYDAY DISCOURSE",
              "topics": [
                "MASTERING REGISTER AND OPEN QUESTIONS",
                "THE ART OF ARGUMENT AND DEBATING",
              ],
            },
            {
              "subtitle": "LISTENING COMPREHENSION",
              "topics": ["ANALYSING AUDIO-VISUAL TEXTS AND DISCUSSIONS"],
            },
            {
              "subtitle": "ENGLISH SOUNDS",
              "topics": [
                "MASTERING /r/, /l/, AND CONSONANT CLUSTERS",
                "CHOOSING THE RIGHT WORDS",
              ],
            },
          ],
        },
        {
          "subtitle": "READING",
          "subStrands": [
            {
              "subtitle": "COMPREHENSION",
              "topics": [
                "INDEPENDENT READING FOR PURPOSE AND ENJOYMENT",
                "REFLECTING ON VIEWPOINTS AND CREDIBILITY",
                "EVALUATING MEDIA AND INFORMATION",
                "EXPANDING IDEAS AND PERSPECTIVES",
                "SPEED READING FOR SPECIFIC INFORMATION",
                "PREDICTIONS, PATTERNS, AND RELATIONSHIPS",
                "MAKING GENERALISATIONS AND REAL-LIFE LINKS",
                "COMPARING TEXT TYPES",
                "SILENT READING AND COMPLEX COMPREHENSION",
                "THE EFFECT OF TEXT ON THE READER",
                "INTERPRETING FIGURATIVE AND SENSORY LANGUAGE",
                "ACADEMIC AND TECHNICAL VOCABULARY",
                "MAKING CONNECTIONS BETWEEN WORDS",
              ],
            },
            {
              "subtitle": "SUMMARISING",
              "topics": ["MASTERING THE OBJECTIVE SUMMARY"],
            },
          ],
        },
        {
          "subtitle": "GRAMMAR USAGE",
          "subStrands": [
            {
              "subtitle": "GRAMMAR",
              "topics": [
                "NOUN PHRASES AND THEIR FUNCTIONS",
                "COMPLEX PHRASAL VERBS",
                "ADJECTIVE PHRASES AND THEIR ORDER",
                "ADVERBIAL PHRASES AND THEIR FUNCTIONS",
                "CONDITIONAL SENTENCES (TYPE 3)",
                "DEFINING AND NON-DEFINING RELATIVE CLAUSES",
                "SUBJECT AND PREDICATE",
                "ACTIVE AND PASSIVE VOICE",
                "REPORTED SPEECH",
              ],
            },
            {
              "subtitle": "PUNCTUATION AND CAPITALISATION",
              "topics": ["USING DASHES, HYPHENS, AND BRACKETS"],
            },
            {
              "subtitle": "VOCABULARY",
              "topics": [
                "INTERPRETING VOCABULARY IN CONTEXT",
                "SPELLING CONVENTIONS AND DICTIONARY USAGE",
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
                "BUILDING COHESIVE PARAGRAPHS",
                "TELLING TALES: WRITING NARRATIVE ESSAYS",
                "LETTER WRITING WITH COHESION",
                "THE ART OF SUMMARISING",
              ],
            },
            {
              "subtitle": "TEXT TYPES AND PURPOSES",
              "topics": [
                "WRITING EFFECTIVE DESCRIPTIONS",
                "NARRATIVE TECHNIQUES",
                "PERSUASIVE WRITING AND REJOINDERS",
                "INFORMATIVE AND EXPLANATORY TEXTS",
                "FORMAL WRITING FOR SPECIFIC LIFE SITUATIONS",
                "CREATING SHORT TEXTS FOR DIFFERENT AUDIENCES",
                "WRITING ARTICLES FOR PUBLICATION",
                "COMPOSING SPEECHES",
              ],
            },
            {
              "subtitle": "BUILDING AND PRESENTING KNOWLEDGE",
              "topics": [
                "CONDUCTING SHORT RESEARCH PROJECTS",
                "ANALYSING CHARACTERISATION IN TEXTS AND MEDIA",
                "MONOLOGUES AND DIALOGUES IN PLAY SCRIPTS",
                "SEQUENCING EVENTS IN TEXTS AND MEDIA",
                "USING LITERARY DEVICES (IMAGERY) IN TEXTS",
                "ANALYSING COMMON THEMES IN TEXTS",
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
                "Introduction to Binary Compounds",
                "THE FORMATION OF BINARY COMPOUNDS",
                "CHARACTERISTICS OF ACIDS, BASES, AND SALTS",
                "ATOMIC BONDING IN CHEMICAL COMPOUNDS",
              ],
            },
            {
              "subtitle": "LIVING CELLS",
              "topics": [
                "Concepts and Formation of Specialised Cells",
                "Functions of Specialised Plant Cells",
                "Functions of Specialised Animal Cells",
              ],
            },
          ],
        },
        {
          "subtitle": "CYCLES",
          "subStrands": [
            {
              "subtitle": "EARTH SCIENCES",
              "topics": [
                "The Process of the Nitrogen Cycle",
                "Importance of the Nitrogen Cycle",
              ],
            },
            {
              "subtitle": "LIFE CYCLE OF ORGANISMS",
              "topics": [
                "The Life Cycle of the Grasshopper",
                "How Grasshoppers Affect Humans",
              ],
            },
            {
              "subtitle": "CROP PRODUCTION",
              "topics": [
                "Maturation of Crops in Different Soils",
                "Uses of Crops at Different Maturity Stages",
                "Importance of Knowing Maturity Stages",
              ],
            },
            {
              "subtitle": "ANIMAL PRODUCTION",
              "topics": [
                "Ingredients and preparation of feed for domestic and commercial animals",
                "SELECTING FEED FOR DIFFERENT ANIMAL GROUPS",
                "FEEDING FOR GROWTH STAGES",
                "FEEDING PRACTICES AND RECORD KEEPING",
              ],
            },
          ],
        },
        {
          "subtitle": "Systems",
          "subStrands": [
            {
              "subtitle": "The Human Body System",
              "topics": [
                "The Circulatory System and Blood Composition",
                "Structure of the Heart and Blood Vessels",
                "Health Challenges of the Circulatory System",
                "The Concept of Respiration",
                "Structure and Functions of the Respiratory System",
                "The Mechanism of Breathing (Inhalation and Exhalation)",
                "How the Respiratory and Circulatory Systems Work Together",
              ],
            },
            {
              "subtitle": "THE SOLAR SYSTEM",
              "topics": [
                "Non-Planetary Bodies: Asteroids and Comets",
                "Space Rocks: Meteoroids, Meteors, and Meteorites",
                "The Dwarf Planets: Small but Mighty",
              ],
            },
            {
              "subtitle": "ECOSYSTEM",
              "topics": [
                "HABITATS AND ECOSYSTEMS",
                "FOOD CHAINS AND FOOD WEBS",
                "ECOSYSTEM BALANCE AND INTERFERENCES",
              ],
            },
            {
              "subtitle": "FARMING SYSTEMS",
              "topics": [
                "Sources and Types of Manure",
                "Demonstrating the Preparation of Manure",
                "Treating and Curing Manure (B9.3.4.1.3)",
              ],
            },
          ],
        },
        {
          "subtitle": "FORCES AND ENERGY",
          "subStrands": [
            {
              "subtitle": "ENERGY",
              "topics": [
                "Strategies for Conserving Energy",
                "The Importance of Energy Conservation",
                "Calculating Energy Consumed",
                "Image Formation in Cameras",
                "The Formation of Shadows",
                "The Formation of an Eclipse",
                "The Application of Light Energy (Refraction)",
              ],
            },
            {
              "subtitle": "ELECTRICITY AND ELECTRONICS",
              "topics": [
                "Energy Transformation and Ohm’s Law",
                "Electronic Components (Diodes, LEDs, and Capacitors)",
              ],
            },
            {
              "subtitle": "CONVERSION AND CONSERVATION OF ENERGY",
              "topics": [
                "Energy Conversion and the Law of Conservation",
                "Applications of Energy Conversion and Conservation",
              ],
            },
            {
              "subtitle": "FORCE AND MOTION",
              "topics": [
                "Understanding Pressure",
                "Newton’s Third Law of Motion",
                "Newton's Second Law and Momentum (F = ma)",
              ],
            },
            {
              "subtitle": "AGRICULTURAL TOOLS",
              "topics": [
                "Materials for Making Agricultural Tools",
                "Processes and Precautions in Making Tools",
                "Manufacturing Simple Agricultural Tools",
              ],
            },
          ],
        },
        {
          "subtitle": "HUMANS AND THE ENVIRONMENT",
          "subStrands": [
            {
              "subtitle": "WASTE MANAGEMENT",
              "topics": [
                "Scientific Methods of Waste Management (Recycling and Composting)",
                "Scientific Principles Underlying Waste Management Methods",
                "Auditing and Assessing Waste Management Effectiveness",
                "The Environmental Impact of Waste",
                "Innovative Waste Management for Sustainable Development",
                "Waste Types and Management Practices in Ghana",
              ],
            },
            {
              "subtitle": "HUMAN HEALTH",
              "topics": [
                "Non-Communicable Diseases (NCDs)",
                "Concepts of Health and Common Diseases",
                "Fungal Diseases (Ringworm and Candidiasis)",
              ],
            },
            {
              "subtitle": "SCIENCE AND INDUSTRY",
              "topics": [
                "Scientific Concepts in Local Industries",
                "Modern vs. Indigenous Industries",
                "Scientific Processes in Indigenous Industries",
              ],
            },
            {
              "subtitle": "CLIMATE CHANGE AND GREEN ECONOMY",
              "topics": [
                "Factors Influencing Climate Change",
                "Climate Change Actions in Ghana and the World",
              ],
            },
            {
              "subtitle": "UNDERSTANDING THE ENVIRONMENT",
              "topics": [
                "Agricultural Uses of Plant Parts",
                "Non-Agricultural Uses of Plant Parts",
                "Creating and Demonstrating Plant Part Uses",
              ],
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
                "Significant Figures, Standard Form, and the Rational Number System",
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
                "Assess global sources and the means of conserving energy",
              ],
            },
            {
              "subtitle": "OUR NATURAL AND HUMAN RESOURCES",
              "topics": [
                "Examining the Importance of Natural Resources to the Development of Ghana",
                "Evaluating the Importance of Human Resources to the Development of Ghana",
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
                "Responsible Parenting within the Family System",
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
                "The Rights and Responsibilities of the Child",
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
                "The Significance of Political Stability in National Development",
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
                "Political Developments under the Fourth Republic",
              ],
            },
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
      ..._additionalCourseData["JHS 3"]!,
    };

    final strandsData = grade == "JHS 2"
        ? (jhs2CourseData[courseTitle] ?? jhs2CourseData["English"]!)
        : grade == "JHS 3"
        ? (jhs3CourseData[courseTitle] ?? jhs3CourseData["English"]!)
        : (courseData[courseTitle] ?? courseData["English"]!);

    final generatedStrands = List.generate(strandsData.length, (sIndex) {
      final isStrandCompleted = false;
      final isStrandLocked = !isGradeUnlocked(grade);
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

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs1S1Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss1Lesson1IndependentQuizData;
                quizData = computingJhs1S1Ss1Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs1S1Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss1Lesson2IndependentQuizData;
                quizData = computingJhs1S1Ss1Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs1S1Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss1Lesson3IndependentQuizData;
                quizData = computingJhs1S1Ss1Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                practiceData = computingJhs1S1Ss1Lesson4PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss1Lesson4IndependentQuizData;
                quizData = computingJhs1S1Ss1Lesson4QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                practiceData = computingJhs1S1Ss1Lesson5PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss1Lesson5IndependentQuizData;
                quizData = computingJhs1S1Ss1Lesson5QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                practiceData = computingJhs1S1Ss1Lesson6PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss1Lesson6IndependentQuizData;
                quizData = computingJhs1S1Ss1Lesson6QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs1S1Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss2Lesson1IndependentQuizData;
                quizData = computingJhs1S1Ss2Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs1S1Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss2Lesson2IndependentQuizData;
                quizData = computingJhs1S1Ss2Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs1S1Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss2Lesson3IndependentQuizData;
                quizData = computingJhs1S1Ss2Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                practiceData = computingJhs1S1Ss2Lesson4PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss2Lesson4IndependentQuizData;
                quizData = computingJhs1S1Ss2Lesson4QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                practiceData = computingJhs1S1Ss2Lesson5PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss2Lesson5IndependentQuizData;
                quizData = computingJhs1S1Ss2Lesson5QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 5) {
                practiceData = computingJhs1S1Ss2Lesson6PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss2Lesson6IndependentQuizData;
                quizData = computingJhs1S1Ss2Lesson6QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs1S1Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss3Lesson1IndependentQuizData;
                quizData = computingJhs1S1Ss3Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs1S1Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss3Lesson2IndependentQuizData;
                quizData = computingJhs1S1Ss3Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                practiceData = computingJhs1S1Ss3Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss3Lesson3IndependentQuizData;
                quizData = computingJhs1S1Ss3Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 3) {
                practiceData = computingJhs1S1Ss3Lesson4PracticeData;
                independentPracticeData =
                    computingJhs1S1Ss3Lesson4IndependentQuizData;
                quizData = computingJhs1S1Ss3Lesson4QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs1S2Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss1Lesson1IndependentQuizData;
                quizData = computingJhs1S2Ss1Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs1S2Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss1Lesson2IndependentQuizData;
                quizData = computingJhs1S2Ss1Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs1S2Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss1Lesson3IndependentQuizData;
                quizData = computingJhs1S2Ss1Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                practiceData = computingJhs1S2Ss1Lesson4PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss1Lesson4IndependentQuizData;
                quizData = computingJhs1S2Ss1Lesson4QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                practiceData = computingJhs1S2Ss1Lesson5PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss1Lesson5IndependentQuizData;
                quizData = computingJhs1S2Ss1Lesson5QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                practiceData = computingJhs1S2Ss1Lesson6PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss1Lesson6IndependentQuizData;
                quizData = computingJhs1S2Ss1Lesson6QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                practiceData = computingJhs1S2Ss1Lesson7PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss1Lesson7IndependentQuizData;
                quizData = computingJhs1S2Ss1Lesson7QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs1S2Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss2Lesson1IndependentQuizData;
                quizData = computingJhs1S2Ss2Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs1S2Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss2Lesson2IndependentQuizData;
                quizData = computingJhs1S2Ss2Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs1S2Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss2Lesson3IndependentQuizData;
                quizData = computingJhs1S2Ss2Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                practiceData = computingJhs1S2Ss2Lesson4PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss2Lesson4IndependentQuizData;
                quizData = computingJhs1S2Ss2Lesson4QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                practiceData = computingJhs1S2Ss2Lesson5PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss2Lesson5IndependentQuizData;
                quizData = computingJhs1S2Ss2Lesson5QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 5) {
                practiceData = computingJhs1S2Ss2Lesson6PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss2Lesson6IndependentQuizData;
                quizData = computingJhs1S2Ss2Lesson6QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs1S2Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson1IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs1S2Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson2IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                practiceData = computingJhs1S2Ss3Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson3IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 3) {
                practiceData = computingJhs1S2Ss3Lesson4PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson4IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson4QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 4) {
                practiceData = computingJhs1S2Ss3Lesson5PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson5IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson5QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 5) {
                practiceData = computingJhs1S2Ss3Lesson6PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson6IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson6QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 6) {
                practiceData = computingJhs1S2Ss3Lesson7PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson7IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson7QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 7) {
                practiceData = computingJhs1S2Ss3Lesson8PracticeData;
                independentPracticeData =
                    computingJhs1S2Ss3Lesson8IndependentQuizData;
                quizData = computingJhs1S2Ss3Lesson8QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs1S3Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss1Lesson1IndependentQuizData;
                quizData = computingJhs1S3Ss1Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs1S3Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss1Lesson2IndependentQuizData;
                quizData = computingJhs1S3Ss1Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs1S3Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss1Lesson3IndependentQuizData;
                quizData = computingJhs1S3Ss1Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs1S3Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss2Lesson1IndependentQuizData;
                quizData = computingJhs1S3Ss2Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs1S3Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss2Lesson2IndependentQuizData;
                quizData = computingJhs1S3Ss2Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs1S3Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss3Lesson1IndependentQuizData;
                quizData = computingJhs1S3Ss3Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs1S3Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss3Lesson2IndependentQuizData;
                quizData = computingJhs1S3Ss3Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                practiceData = computingJhs1S3Ss3Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss3Lesson3IndependentQuizData;
                quizData = computingJhs1S3Ss3Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs1S3Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss4Lesson1IndependentQuizData;
                quizData = computingJhs1S3Ss4Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                practiceData = computingJhs1S3Ss4Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss4Lesson2IndependentQuizData;
                quizData = computingJhs1S3Ss4Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                practiceData = computingJhs1S3Ss4Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S3Ss4Lesson3IndependentQuizData;
                quizData = computingJhs1S3Ss4Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs1S4Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S4Ss1Lesson1IndependentQuizData;
                quizData = computingJhs1S4Ss1Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs1S4Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S4Ss1Lesson2IndependentQuizData;
                quizData = computingJhs1S4Ss1Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs1S4Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs1S4Ss1Lesson3IndependentQuizData;
                quizData = computingJhs1S4Ss1Lesson3QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs1S4Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S4Ss2Lesson1IndependentQuizData;
                quizData = computingJhs1S4Ss2Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs1S4Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs1S4Ss2Lesson2IndependentQuizData;
                quizData = computingJhs1S4Ss2Lesson2QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs1S4Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S4Ss3Lesson1IndependentQuizData;
                quizData = computingJhs1S4Ss3Lesson1QuizData;
              }

              if (grade == "JHS 1" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs1S4Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs1S4Ss4Lesson1IndependentQuizData;
                quizData = computingJhs1S4Ss4Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs2S1Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss1Lesson1IndependentQuizData;
                quizData = computingJhs2S1Ss1Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs2S1Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss1Lesson2IndependentQuizData;
                quizData = computingJhs2S1Ss1Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs2S1Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss1Lesson3IndependentQuizData;
                quizData = computingJhs2S1Ss1Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                practiceData = computingJhs2S1Ss1Lesson4PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss1Lesson4IndependentQuizData;
                quizData = computingJhs2S1Ss1Lesson4QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                practiceData = computingJhs2S1Ss1Lesson5PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss1Lesson5IndependentQuizData;
                quizData = computingJhs2S1Ss1Lesson5QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                practiceData = computingJhs2S1Ss1Lesson6PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss1Lesson6IndependentQuizData;
                quizData = computingJhs2S1Ss1Lesson6QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs2S1Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss2Lesson1IndependentQuizData;
                quizData = computingJhs2S1Ss2Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs2S1Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss2Lesson2IndependentQuizData;
                quizData = computingJhs2S1Ss2Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs2S1Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss2Lesson3IndependentQuizData;
                quizData = computingJhs2S1Ss2Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs2S1Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss3Lesson1IndependentQuizData;
                quizData = computingJhs2S1Ss3Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs2S1Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S1Ss3Lesson2IndependentQuizData;
                quizData = computingJhs2S1Ss3Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs2S2Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss1Lesson1IndependentQuizData;
                quizData = computingJhs2S2Ss1Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs2S2Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss1Lesson2IndependentQuizData;
                quizData = computingJhs2S2Ss1Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs2S2Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss1Lesson3IndependentQuizData;
                quizData = computingJhs2S2Ss1Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs2S2Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss2Lesson1IndependentQuizData;
                quizData = computingJhs2S2Ss2Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs2S2Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss2Lesson2IndependentQuizData;
                quizData = computingJhs2S2Ss2Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs2S2Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss2Lesson3IndependentQuizData;
                quizData = computingJhs2S2Ss2Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs2S2Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss3Lesson1IndependentQuizData;
                quizData = computingJhs2S2Ss3Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs2S2Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss3Lesson2IndependentQuizData;
                quizData = computingJhs2S2Ss3Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                practiceData = computingJhs2S2Ss3Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss3Lesson3IndependentQuizData;
                quizData = computingJhs2S2Ss3Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 3) {
                practiceData = computingJhs2S2Ss3Lesson4PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss3Lesson4IndependentQuizData;
                quizData = computingJhs2S2Ss3Lesson4QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 4) {
                practiceData = computingJhs2S2Ss3Lesson5PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss3Lesson5IndependentQuizData;
                quizData = computingJhs2S2Ss3Lesson5QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 5) {
                practiceData = computingJhs2S2Ss3Lesson6PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss3Lesson6IndependentQuizData;
                quizData = computingJhs2S2Ss3Lesson6QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 6) {
                practiceData = computingJhs2S2Ss3Lesson7PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss3Lesson7IndependentQuizData;
                quizData = computingJhs2S2Ss3Lesson7QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs2S2Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss4Lesson1IndependentQuizData;
                quizData = computingJhs2S2Ss4Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                practiceData = computingJhs2S2Ss4Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss4Lesson2IndependentQuizData;
                quizData = computingJhs2S2Ss4Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                practiceData = computingJhs2S2Ss4Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S2Ss4Lesson3IndependentQuizData;
                quizData = computingJhs2S2Ss4Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs2S3Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss1Lesson1IndependentQuizData;
                quizData = computingJhs2S3Ss1Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs2S3Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss1Lesson2IndependentQuizData;
                quizData = computingJhs2S3Ss1Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs2S3Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss2Lesson1IndependentQuizData;
                quizData = computingJhs2S3Ss2Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs2S3Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss2Lesson2IndependentQuizData;
                quizData = computingJhs2S3Ss2Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs2S3Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss2Lesson3IndependentQuizData;
                quizData = computingJhs2S3Ss2Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs2S3Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss3Lesson1IndependentQuizData;
                quizData = computingJhs2S3Ss3Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs2S3Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss3Lesson2IndependentQuizData;
                quizData = computingJhs2S3Ss3Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs2S3Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss4Lesson1IndependentQuizData;
                quizData = computingJhs2S3Ss4Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                practiceData = computingJhs2S3Ss4Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S3Ss4Lesson2IndependentQuizData;
                quizData = computingJhs2S3Ss4Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs2S4Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss1Lesson1IndependentQuizData;
                quizData = computingJhs2S4Ss1Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs2S4Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss1Lesson2IndependentQuizData;
                quizData = computingJhs2S4Ss1Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs2S4Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss1Lesson3IndependentQuizData;
                quizData = computingJhs2S4Ss1Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                practiceData = computingJhs2S4Ss1Lesson4PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss1Lesson4IndependentQuizData;
                quizData = computingJhs2S4Ss1Lesson4QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                practiceData = computingJhs2S4Ss1Lesson5PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss1Lesson5IndependentQuizData;
                quizData = computingJhs2S4Ss1Lesson5QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs2S4Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss2Lesson1IndependentQuizData;
                quizData = computingJhs2S4Ss2Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs2S4Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss2Lesson2IndependentQuizData;
                quizData = computingJhs2S4Ss2Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs2S4Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss2Lesson3IndependentQuizData;
                quizData = computingJhs2S4Ss2Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                practiceData = computingJhs2S4Ss2Lesson4PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss2Lesson4IndependentQuizData;
                quizData = computingJhs2S4Ss2Lesson4QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                practiceData = computingJhs2S4Ss2Lesson5PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss2Lesson5IndependentQuizData;
                quizData = computingJhs2S4Ss2Lesson5QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs2S4Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss3Lesson1IndependentQuizData;
                quizData = computingJhs2S4Ss3Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs2S4Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss3Lesson2IndependentQuizData;
                quizData = computingJhs2S4Ss3Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                practiceData = computingJhs2S4Ss3Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss3Lesson3IndependentQuizData;
                quizData = computingJhs2S4Ss3Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 3) {
                practiceData = computingJhs2S4Ss3Lesson4PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss3Lesson4IndependentQuizData;
                quizData = computingJhs2S4Ss3Lesson4QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs2S4Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss4Lesson1IndependentQuizData;
                quizData = computingJhs2S4Ss4Lesson1QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                practiceData = computingJhs2S4Ss4Lesson2PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss4Lesson2IndependentQuizData;
                quizData = computingJhs2S4Ss4Lesson2QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                practiceData = computingJhs2S4Ss4Lesson3PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss4Lesson3IndependentQuizData;
                quizData = computingJhs2S4Ss4Lesson3QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 3) {
                practiceData = computingJhs2S4Ss4Lesson4PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss4Lesson4IndependentQuizData;
                quizData = computingJhs2S4Ss4Lesson4QuizData;
              }

              if (grade == "JHS 2" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 4) {
                practiceData = computingJhs2S4Ss4Lesson5PracticeData;
                independentPracticeData =
                    computingJhs2S4Ss4Lesson5IndependentQuizData;
                quizData = computingJhs2S4Ss4Lesson5QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs3S1Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss1Lesson1IndependentQuizData;
                quizData = computingJhs3S1Ss1Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs3S1Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss1Lesson2IndependentQuizData;
                quizData = computingJhs3S1Ss1Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs3S1Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss1Lesson3IndependentQuizData;
                quizData = computingJhs3S1Ss1Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                practiceData = computingJhs3S1Ss1Lesson4PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss1Lesson4IndependentQuizData;
                quizData = computingJhs3S1Ss1Lesson4QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                practiceData = computingJhs3S1Ss1Lesson5PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss1Lesson5IndependentQuizData;
                quizData = computingJhs3S1Ss1Lesson5QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                practiceData = computingJhs3S1Ss1Lesson6PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss1Lesson6IndependentQuizData;
                quizData = computingJhs3S1Ss1Lesson6QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs3S1Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss2Lesson1IndependentQuizData;
                quizData = computingJhs3S1Ss2Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs3S1Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss2Lesson2IndependentQuizData;
                quizData = computingJhs3S1Ss2Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs3S1Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss2Lesson3IndependentQuizData;
                quizData = computingJhs3S1Ss2Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs3S1Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss3Lesson1IndependentQuizData;
                quizData = computingJhs3S1Ss3Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 0 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs3S1Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S1Ss3Lesson2IndependentQuizData;
                quizData = computingJhs3S1Ss3Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs3S2Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss1Lesson1IndependentQuizData;
                quizData = computingJhs3S2Ss1Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs3S2Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss1Lesson2IndependentQuizData;
                quizData = computingJhs3S2Ss1Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs3S2Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss1Lesson3IndependentQuizData;
                quizData = computingJhs3S2Ss1Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs3S2Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss2Lesson1IndependentQuizData;
                quizData = computingJhs3S2Ss2Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs3S2Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss2Lesson2IndependentQuizData;
                quizData = computingJhs3S2Ss2Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                practiceData = computingJhs3S2Ss2Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss2Lesson3IndependentQuizData;
                quizData = computingJhs3S2Ss2Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs3S2Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss3Lesson1IndependentQuizData;
                quizData = computingJhs3S2Ss3Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs3S2Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss3Lesson2IndependentQuizData;
                quizData = computingJhs3S2Ss3Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                practiceData = computingJhs3S2Ss3Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss3Lesson3IndependentQuizData;
                quizData = computingJhs3S2Ss3Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs3S2Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss4Lesson1IndependentQuizData;
                quizData = computingJhs3S2Ss4Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                practiceData = computingJhs3S2Ss4Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss4Lesson2IndependentQuizData;
                quizData = computingJhs3S2Ss4Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                practiceData = computingJhs3S2Ss4Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S2Ss4Lesson3IndependentQuizData;
                quizData = computingJhs3S2Ss4Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs3S3Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss1Lesson1IndependentQuizData;
                quizData = computingJhs3S3Ss1Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs3S3Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss1Lesson2IndependentQuizData;
                quizData = computingJhs3S3Ss1Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs3S3Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss2Lesson1IndependentQuizData;
                quizData = computingJhs3S3Ss2Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs3S3Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss3Lesson1IndependentQuizData;
                quizData = computingJhs3S3Ss3Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                practiceData = computingJhs3S3Ss3Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss3Lesson2IndependentQuizData;
                quizData = computingJhs3S3Ss3Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs3S3Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss4Lesson1IndependentQuizData;
                quizData = computingJhs3S3Ss4Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                practiceData = computingJhs3S3Ss4Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss4Lesson2IndependentQuizData;
                quizData = computingJhs3S3Ss4Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                practiceData = computingJhs3S3Ss4Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S3Ss4Lesson3IndependentQuizData;
                quizData = computingJhs3S3Ss4Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                practiceData = computingJhs3S4Ss1Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S4Ss1Lesson1IndependentQuizData;
                quizData = computingJhs3S4Ss1Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                practiceData = computingJhs3S4Ss1Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S4Ss1Lesson2IndependentQuizData;
                quizData = computingJhs3S4Ss1Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                practiceData = computingJhs3S4Ss1Lesson3PracticeData;
                independentPracticeData =
                    computingJhs3S4Ss1Lesson3IndependentQuizData;
                quizData = computingJhs3S4Ss1Lesson3QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                practiceData = computingJhs3S4Ss2Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S4Ss2Lesson1IndependentQuizData;
                quizData = computingJhs3S4Ss2Lesson1QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                practiceData = computingJhs3S4Ss2Lesson2PracticeData;
                independentPracticeData =
                    computingJhs3S4Ss2Lesson2IndependentQuizData;
                quizData = computingJhs3S4Ss2Lesson2QuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                practiceData = computingJhs3S4Ss3Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S4Ss3Lesson1IndependentQuizData;
              }

              if (grade == "JHS 3" &&
                  courseTitle == "COMPUTING" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                practiceData = computingJhs3S4Ss4Lesson1PracticeData;
                independentPracticeData =
                    computingJhs3S4Ss4Lesson1IndependentQuizData;
                quizData = computingJhs3S4Ss4Lesson1QuizData;
              }

              // if (grade == "JHS 2" &&
              //     courseTitle == "English" &&
              //     sIndex == 0 &&
              //     ssIndex == 0 &&
              //     lIndex == 0) {
              //   getReadyData = ss2Lesson1GetReadyData;
              //   learnData = ss1Lesson2LearnData;
              //   practiceData = ss1Lesson2PracticeData;
              //   independentPracticeData = ss1Lesson2IndependentQuizData;
              //   quizData = ss1Lesson2QuizData;
              // }

              if (courseTitle == "English" &&
                  sIndex == 0 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = ss1Lesson4GetReadyData;
                learnData = ss1Lesson4LearnData;
                practiceData = ss1Lesson4PracticeData;
                independentPracticeData = ss1Lesson4IndependentQuizData;
                quizData = ss1Lesson4QuizData;
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
                getReadyData = ss1Lesson2GetReadyData;
                learnData = ss1Lesson2LearnData;
                practiceData = ss1Lesson2PracticeData;
                independentPracticeData = ss1Lesson2IndependentQuizData;
                quizData = ss1Lesson2QuizData;
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
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = s2ss1Lesson4GetReadyData;
                learnData = s2ss1Lesson4LearnData;
                practiceData = s2ss1Lesson4PracticeData;
                independentPracticeData = s2ss1Lesson4IndependentQuizData;
                quizData = s2ss1Lesson4QuizData;
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
                getReadyData = s3ss1Lesson8GetReadyData;
                learnData = s3ss1Lesson8LearnData;
                practiceData = s3ss1Lesson8PracticeData;
                independentPracticeData = s3ss1Lesson8IndependentQuizData;
                quizData = s3ss1Lesson8QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = s3ss1Lesson9GetReadyData;
                learnData = s3ss1Lesson9LearnData;
                practiceData = s3ss1Lesson9PracticeData;
                independentPracticeData = s3ss1Lesson9IndependentQuizData;
                quizData = s3ss1Lesson9QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = s3ss1Lesson10GetReadyData;
                learnData = s3ss1Lesson10LearnData;
                practiceData = s3ss1Lesson10PracticeData;
                independentPracticeData = s3ss1Lesson10IndependentQuizData;
                quizData = s3ss1Lesson10QuizData;
              }

              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = s3ss1Lesson11GetReadyData;
                learnData = s3ss1Lesson11LearnData;
                practiceData = s3ss1Lesson11PracticeData;
                independentPracticeData = s3ss1Lesson11IndependentQuizData;
                quizData = s3ss1Lesson11QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = s3ss1Lesson12GetReadyData;
                learnData = s3ss1Lesson12LearnData;
                practiceData = s3ss1Lesson12PracticeData;
                independentPracticeData = s3ss1Lesson12IndependentQuizData;
                quizData = s3ss1Lesson12QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = s3ss1Lesson13GetReadyData;
                learnData = s3ss1Lesson13LearnData;
                practiceData = s3ss1Lesson13PracticeData;
                independentPracticeData = s3ss1Lesson13IndependentQuizData;
                quizData = s3ss1Lesson13QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = s3ss1Lesson14GetReadyData;
                learnData = s3ss1Lesson14LearnData;
                practiceData = s3ss1Lesson14PracticeData;
                independentPracticeData = s3ss1Lesson14IndependentQuizData;
                quizData = s3ss1Lesson14QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 7) {
                getReadyData = s3ss1Lesson15GetReadyData;
                learnData = s3ss1Lesson15LearnData;
                practiceData = s3ss1Lesson15PracticeData;
                independentPracticeData = s3ss1Lesson15IndependentQuizData;
                quizData = s3ss1Lesson15QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 8) {
                getReadyData = s3ss1Lesson16GetReadyData;
                learnData = s3ss1Lesson16LearnData;
                practiceData = s3ss1Lesson16PracticeData;
                independentPracticeData = s3ss1Lesson16IndependentQuizData;
                quizData = s3ss1Lesson16QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 9) {
                getReadyData = s3ss1Lesson5GetReadyData;
                learnData = s3ss1Lesson5LearnData;
                practiceData = s3ss1Lesson5PracticeData;
                independentPracticeData = s3ss1Lesson5IndependentQuizData;
                quizData = s3ss1Lesson5QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 10) {
                getReadyData = s3ss1Lesson6GetReadyData;
                learnData = s3ss1Lesson6LearnData;
                practiceData = s3ss1Lesson6PracticeData;
                independentPracticeData = s3ss1Lesson6IndependentQuizData;
                quizData = s3ss1Lesson6QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 11) {
                getReadyData = s3ss1Lesson7GetReadyData;
                learnData = s3ss1Lesson7LearnData;
                practiceData = s3ss1Lesson7PracticeData;
                independentPracticeData = s3ss1Lesson7IndependentQuizData;
                quizData = s3ss1Lesson7QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 12) {
                getReadyData = s3ss1Lesson1GetReadyData;
                learnData = s3ss1Lesson1LearnData;
                practiceData = s3ss1Lesson1PracticeData;
                independentPracticeData = s3ss1Lesson1IndependentQuizData;
                quizData = s3ss1Lesson1QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 13) {
                getReadyData = s3ss1Lesson2GetReadyData;
                learnData = s3ss1Lesson2LearnData;
                practiceData = s3ss1Lesson2PracticeData;
                independentPracticeData = s3ss1Lesson2IndependentQuizData;
                quizData = s3ss1Lesson2QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 14) {
                getReadyData = s3ss1Lesson3GetReadyData;
                learnData = s3ss1Lesson3LearnData;
                practiceData = s3ss1Lesson3PracticeData;
                independentPracticeData = s3ss1Lesson3IndependentQuizData;
                quizData = s3ss1Lesson3QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 15) {
                getReadyData = s3ss1Lesson4GetReadyData;
                learnData = s3ss1Lesson4LearnData;
                practiceData = s3ss1Lesson4PracticeData;
                independentPracticeData = s3ss1Lesson4IndependentQuizData;
                quizData = s3ss1Lesson4QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = s3ss2Lesson1GetReadyData;
                learnData = s3ss2Lesson1LearnData;
                practiceData = s3ss2Lesson1PracticeData;
                independentPracticeData = s3ss2Lesson1IndependentQuizData;
                quizData = s3ss2Lesson1QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = s3ss2Lesson2GetReadyData;
                learnData = s3ss2Lesson2LearnData;
                practiceData = s3ss2Lesson2PracticeData;
                independentPracticeData = s3ss2Lesson2IndependentQuizData;
                quizData = s3ss2Lesson2QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = s3ss3Lesson1GetReadyData;
                learnData = s3ss3Lesson1LearnData;
                practiceData = s3ss3Lesson1PracticeData;
                independentPracticeData = s3ss3Lesson1IndependentQuizData;
                quizData = s3ss3Lesson1QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = s3ss3Lesson2GetReadyData;
                learnData = s3ss3Lesson2LearnData;
                practiceData = s3ss3Lesson2PracticeData;
                independentPracticeData = s3ss3Lesson2IndependentQuizData;
                quizData = s3ss3Lesson2QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = s3ss3Lesson3GetReadyData;
                learnData = s3ss3Lesson3LearnData;
                practiceData = s3ss3Lesson3PracticeData;
                independentPracticeData = s3ss3Lesson3IndependentQuizData;
                quizData = s3ss3Lesson3QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = s4ss1Lesson1GetReadyData;
                learnData = s4ss1Lesson1LearnData;
                practiceData = s4ss1Lesson1PracticeData;
                independentPracticeData = s4ss1Lesson1IndependentQuizData;
                quizData = s4ss1Lesson1QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = s4ss1Lesson2GetReadyData;
                learnData = s4ss1Lesson2LearnData;
                practiceData = s4ss1Lesson2PracticeData;
                independentPracticeData = s4ss1Lesson2IndependentQuizData;
                quizData = s4ss1Lesson2QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = s4ss1Lesson3GetReadyData;
                learnData = s4ss1Lesson3LearnData;
                practiceData = s4ss1Lesson3PracticeData;
                independentPracticeData = s4ss1Lesson3IndependentQuizData;
                quizData = s4ss1Lesson3QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = s4ss1Lesson4GetReadyData;
                learnData = s4ss1Lesson4LearnData;
                practiceData = s4ss1Lesson4PracticeData;
                independentPracticeData = s4ss1Lesson4IndependentQuizData;
                quizData = s4ss1Lesson4QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = s4ss1Lesson5GetReadyData;
                learnData = s4ss1Lesson5LearnData;
                practiceData = s4ss1Lesson5PracticeData;
                independentPracticeData = s4ss1Lesson5IndependentQuizData;
                quizData = s4ss1Lesson5QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = s4ss1Lesson6GetReadyData;
                learnData = s4ss1Lesson6LearnData;
                practiceData = s4ss1Lesson6PracticeData;
                independentPracticeData = s4ss1Lesson6IndependentQuizData;
                quizData = s4ss1Lesson6QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = s4ss2Lesson0GetReadyData;
                learnData = s4ss2Lesson0LearnData;
                practiceData = s4ss2Lesson0PracticeData;
                independentPracticeData = s4ss2Lesson0IndependentQuizData;
                quizData = s4ss2Lesson0QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = s4ss2Lesson1GetReadyData;
                learnData = s4ss2Lesson1LearnData;
                practiceData = s4ss2Lesson1PracticeData;
                independentPracticeData = s4ss2Lesson1IndependentQuizData;
                quizData = s4ss2Lesson1QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = s4ss2Lesson2GetReadyData;
                learnData = s4ss2Lesson2LearnData;
                practiceData = s4ss2Lesson2PracticeData;
                independentPracticeData = s4ss2Lesson2IndependentQuizData;
                quizData = s4ss2Lesson2QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                getReadyData = s4ss2Lesson3GetReadyData;
                learnData = s4ss2Lesson3LearnData;
                practiceData = s4ss2Lesson3PracticeData;
                independentPracticeData = s4ss2Lesson3IndependentQuizData;
                quizData = s4ss2Lesson3QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                getReadyData = s4ss2Lesson4GetReadyData;
                learnData = s4ss2Lesson4LearnData;
                practiceData = s4ss2Lesson4PracticeData;
                independentPracticeData = s4ss2Lesson4IndependentQuizData;
                quizData = s4ss2Lesson4QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 5) {
                getReadyData = s4ss2Lesson5GetReadyData;
                learnData = s4ss2Lesson5LearnData;
                practiceData = s4ss2Lesson5PracticeData;
                independentPracticeData = s4ss2Lesson5IndependentQuizData;
                quizData = s4ss2Lesson5QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 6) {
                getReadyData = s4ss2Lesson6GetReadyData;
                learnData = s4ss2Lesson6LearnData;
                practiceData = s4ss2Lesson6PracticeData;
                independentPracticeData = s4ss2Lesson6IndependentQuizData;
                quizData = s4ss2Lesson6QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 7) {
                getReadyData = s4ss2Lesson7GetReadyData;
                learnData = s4ss2Lesson7LearnData;
                practiceData = s4ss2Lesson7PracticeData;
                independentPracticeData = s4ss2Lesson7IndependentQuizData;
                quizData = s4ss2Lesson7QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 8) {
                getReadyData = s4ss2Lesson8GetReadyData;
                learnData = s4ss2Lesson8LearnData;
                practiceData = s4ss2Lesson8PracticeData;
                independentPracticeData = s4ss2Lesson8IndependentQuizData;
                quizData = s4ss2Lesson8QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = s4ss3Lesson1GetReadyData;
                learnData = s4ss3Lesson1LearnData;
                practiceData = s4ss3Lesson1PracticeData;
                independentPracticeData = s4ss3Lesson1IndependentQuizData;
                quizData = s4ss3Lesson1QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = s5ss1Lesson1GetReadyData;
                learnData = s5ss1Lesson1LearnData;
                practiceData = s5ss1Lesson1PracticeData;
                independentPracticeData = s5ss1Lesson1IndependentQuizData;
                quizData = s5ss1Lesson1QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = s5ss1Lesson2GetReadyData;
                learnData = s5ss1Lesson2LearnData;
                practiceData = s5ss1Lesson2PracticeData;
                independentPracticeData = s5ss1Lesson2IndependentQuizData;
                quizData = s5ss1Lesson2QuizData;
              }
              if (courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = s5ss1Lesson3GetReadyData;
                learnData = s5ss1Lesson3LearnData;
                practiceData = s5ss1Lesson3PracticeData;
                independentPracticeData = s5ss1Lesson3IndependentQuizData;
                quizData = s5ss1Lesson3QuizData;
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
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = jhs2s1ss2Lesson2GetReadyData;
                learnData = jhs2s1ss2Lesson2LearnData;
                practiceData = jhs2s1ss2Lesson2PracticeData;
                independentPracticeData = jhs2s1ss2Lesson2IndependentQuizData;
                quizData = jhs2s1ss2Lesson2QuizData;
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
                quizData = jhs2s1ss3Lesson3QuizData;
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
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs2s2ss1Lesson1GetReadyData;
                learnData = jhs2s2ss1Lesson1LearnData;
                practiceData = jhs2s2ss1Lesson1PracticeData;
                independentPracticeData = jhs2s2ss1Lesson1IndependentQuizData;
                quizData = jhs2s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs2s2ss1Lesson2GetReadyData;
                learnData = jhs2s2ss1Lesson2LearnData;
                practiceData = jhs2s2ss1Lesson2PracticeData;
                independentPracticeData = jhs2s2ss1Lesson2IndependentQuizData;
                quizData = jhs2s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs2s2ss1Lesson3GetReadyData;
                learnData = jhs2s2ss1Lesson3LearnData;
                practiceData = jhs2s2ss1Lesson3PracticeData;
                independentPracticeData = jhs2s2ss1Lesson3IndependentQuizData;
                quizData = jhs2s2ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = jhs2s2ss1Lesson4GetReadyData;
                learnData = jhs2s2ss1Lesson4LearnData;
                practiceData = jhs2s2ss1Lesson4PracticeData;
                independentPracticeData = jhs2s2ss1Lesson4IndependentQuizData;
                quizData = jhs2s2ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = jhs2s2ss1Lesson5GetReadyData;
                learnData = jhs2s2ss1Lesson5LearnData;
                practiceData = jhs2s2ss1Lesson5PracticeData;
                independentPracticeData = jhs2s2ss1Lesson5IndependentQuizData;
                quizData = jhs2s2ss1Lesson5QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = jhs2s2ss1Lesson6GetReadyData;
                learnData = jhs2s2ss1Lesson6LearnData;
                practiceData = jhs2s2ss1Lesson6PracticeData;
                independentPracticeData = jhs2s2ss1Lesson6IndependentQuizData;
                quizData = jhs2s2ss1Lesson6QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = jhs2s2ss1Lesson7GetReadyData;
                learnData = jhs2s2ss1Lesson7LearnData;
                practiceData = jhs2s2ss1Lesson7PracticeData;
                independentPracticeData = jhs2s2ss1Lesson7IndependentQuizData;
                quizData = jhs2s2ss1Lesson7QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 7) {
                getReadyData = jhs2s2ss1Lesson8GetReadyData;
                learnData = jhs2s2ss1Lesson8LearnData;
                practiceData = jhs2s2ss1Lesson8PracticeData;
                independentPracticeData = jhs2s2ss1Lesson8IndependentQuizData;
                quizData = jhs2s2ss1Lesson8QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 8) {
                getReadyData = jhs2s2ss1Lesson9GetReadyData;
                learnData = jhs2s2ss1Lesson9LearnData;
                practiceData = jhs2s2ss1Lesson9PracticeData;
                independentPracticeData = jhs2s2ss1Lesson9IndependentQuizData;
                quizData = jhs2s2ss1Lesson9QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 9) {
                getReadyData = jhs2s2ss1Lesson10GetReadyData;
                learnData = jhs2s2ss1Lesson10LearnData;
                practiceData = jhs2s2ss1Lesson10PracticeData;
                independentPracticeData = jhs2s2ss1Lesson10IndependentQuizData;
                quizData = jhs2s2ss1Lesson10QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 10) {
                getReadyData = jhs2s2ss1Lesson11GetReadyData;
                learnData = jhs2s2ss1Lesson11LearnData;
                practiceData = jhs2s2ss1Lesson11PracticeData;
                independentPracticeData = jhs2s2ss1Lesson11IndependentQuizData;
                quizData = jhs2s2ss1Lesson11QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 11) {
                getReadyData = jhs2s2ss1Lesson12GetReadyData;
                learnData = jhs2s2ss1Lesson12LearnData;
                practiceData = jhs2s2ss1Lesson12PracticeData;
                independentPracticeData = jhs2s2ss1Lesson12IndependentQuizData;
                quizData = jhs2s2ss1Lesson12QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs2s3ss1Lesson1GetReadyData;
                learnData = jhs2s3ss1Lesson1LearnData;
                practiceData = jhs2s3ss1Lesson1PracticeData;
                independentPracticeData = jhs2s3ss1Lesson1IndependentQuizData;
                quizData = jhs2s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs2s3ss1Lesson2GetReadyData;
                learnData = jhs2s3ss1Lesson2LearnData;
                practiceData = jhs2s3ss1Lesson2PracticeData;
                independentPracticeData = jhs2s3ss1Lesson2IndependentQuizData;
                quizData = jhs2s3ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs2s3ss1Lesson3GetReadyData;
                learnData = jhs2s3ss1Lesson3LearnData;
                practiceData = jhs2s3ss1Lesson3PracticeData;
                independentPracticeData = jhs2s3ss1Lesson3IndependentQuizData;
                quizData = jhs2s3ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = jhs2s3ss1Lesson4GetReadyData;
                learnData = jhs2s3ss1Lesson4LearnData;
                practiceData = jhs2s3ss1Lesson4PracticeData;
                independentPracticeData = jhs2s3ss1Lesson4IndependentQuizData;
                quizData = jhs2s3ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = jhs2s3ss1Lesson5GetReadyData;
                learnData = jhs2s3ss1Lesson5LearnData;
                practiceData = jhs2s3ss1Lesson5PracticeData;
                independentPracticeData = jhs2s3ss1Lesson5IndependentQuizData;
                quizData = jhs2s3ss1Lesson5QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = jhs2s3ss1Lesson6GetReadyData;
                learnData = jhs2s3ss1Lesson6LearnData;
                practiceData = jhs2s3ss1Lesson6PracticeData;
                independentPracticeData = jhs2s3ss1Lesson6IndependentQuizData;
                quizData = jhs2s3ss1Lesson6QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = jhs2s3ss1Lesson7GetReadyData;
                learnData = jhs2s3ss1Lesson7LearnData;
                practiceData = jhs2s3ss1Lesson7PracticeData;
                independentPracticeData = jhs2s3ss1Lesson7IndependentQuizData;
                quizData = jhs2s3ss1Lesson7QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 7) {
                getReadyData = jhs2s3ss1Lesson8GetReadyData;
                learnData = jhs2s3ss1Lesson8LearnData;
                practiceData = jhs2s3ss1Lesson8PracticeData;
                independentPracticeData = jhs2s3ss1Lesson8IndependentQuizData;
                quizData = jhs2s3ss1Lesson8QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = jhs2s3ss2Lesson1GetReadyData;
                learnData = jhs2s3ss2Lesson1LearnData;
                practiceData = jhs2s3ss2Lesson1PracticeData;
                independentPracticeData = jhs2s3ss2Lesson1IndependentQuizData;
                quizData = jhs2s3ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = jhs2s3ss3Lesson1GetReadyData;
                learnData = jhs2s3ss3Lesson1LearnData;
                practiceData = jhs2s3ss3Lesson1PracticeData;
                independentPracticeData = jhs2s3ss3Lesson1IndependentQuizData;
                quizData = jhs2s3ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs2s4ss1Lesson1GetReadyData;
                learnData = jhs2s4ss1Lesson1LearnData;
                practiceData = jhs2s4ss1Lesson1PracticeData;
                independentPracticeData = jhs2s4ss1Lesson1IndependentQuizData;
                quizData = jhs2s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs2s4ss1Lesson2GetReadyData;
                learnData = jhs2s4ss1Lesson2LearnData;
                practiceData = jhs2s4ss1Lesson2PracticeData;
                independentPracticeData = jhs2s4ss1Lesson2IndependentQuizData;
                quizData = jhs2s4ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs2s4ss1Lesson3GetReadyData;
                learnData = jhs2s4ss1Lesson3LearnData;
                practiceData = jhs2s4ss1Lesson3PracticeData;
                independentPracticeData = jhs2s4ss1Lesson3IndependentQuizData;
                quizData = jhs2s4ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = jhs2s4ss2Lesson1GetReadyData;
                learnData = jhs2s4ss2Lesson1LearnData;
                practiceData = jhs2s4ss2Lesson1PracticeData;
                independentPracticeData = jhs2s4ss2Lesson1IndependentQuizData;
                quizData = jhs2s4ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = jhs2s4ss2Lesson2GetReadyData;
                learnData = jhs2s4ss2Lesson2LearnData;
                practiceData = jhs2s4ss2Lesson2PracticeData;
                independentPracticeData = jhs2s4ss2Lesson2IndependentQuizData;
                quizData = jhs2s4ss2Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = jhs2s4ss2Lesson3GetReadyData;
                learnData = jhs2s4ss2Lesson3LearnData;
                practiceData = jhs2s4ss2Lesson3PracticeData;
                independentPracticeData = jhs2s4ss2Lesson3IndependentQuizData;
                quizData = jhs2s4ss2Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                getReadyData = jhs2s4ss2Lesson4GetReadyData;
                learnData = jhs2s4ss2Lesson4LearnData;
                practiceData = jhs2s4ss2Lesson4PracticeData;
                independentPracticeData = jhs2s4ss2Lesson4IndependentQuizData;
                quizData = jhs2s4ss2Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                getReadyData = jhs2s4ss2Lesson5GetReadyData;
                learnData = jhs2s4ss2Lesson5LearnData;
                practiceData = jhs2s4ss2Lesson5PracticeData;
                independentPracticeData = jhs2s4ss2Lesson5IndependentQuizData;
                quizData = jhs2s4ss2Lesson5QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 5) {
                getReadyData = jhs2s4ss2Lesson6GetReadyData;
                learnData = jhs2s4ss2Lesson6LearnData;
                practiceData = jhs2s4ss2Lesson6PracticeData;
                independentPracticeData = jhs2s4ss2Lesson6IndependentQuizData;
                quizData = jhs2s4ss2Lesson6QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 6) {
                getReadyData = jhs2s4ss2Lesson7GetReadyData;
                learnData = jhs2s4ss2Lesson7LearnData;
                practiceData = jhs2s4ss2Lesson7PracticeData;
                independentPracticeData = jhs2s4ss2Lesson7IndependentQuizData;
                quizData = jhs2s4ss2Lesson7QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 7) {
                getReadyData = jhs2s4ss2Lesson8GetReadyData;
                learnData = jhs2s4ss2Lesson8LearnData;
                practiceData = jhs2s4ss2Lesson8PracticeData;
                independentPracticeData = jhs2s4ss2Lesson8IndependentQuizData;
                quizData = jhs2s4ss2Lesson8QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 8) {
                getReadyData = jhs2s4ss2Lesson9GetReadyData;
                learnData = jhs2s4ss2Lesson9LearnData;
                practiceData = jhs2s4ss2Lesson9PracticeData;
                independentPracticeData = jhs2s4ss2Lesson9IndependentQuizData;
                quizData = jhs2s4ss2Lesson9QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = jhs2s4ss3Lesson1GetReadyData;
                learnData = jhs2s4ss3Lesson1LearnData;
                practiceData = jhs2s4ss3Lesson1PracticeData;
                independentPracticeData = jhs2s4ss3Lesson1IndependentQuizData;
                quizData = jhs2s4ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs2s5ss1Lesson1GetReadyData;
                learnData = jhs2s5ss1Lesson1LearnData;
                practiceData = jhs2s5ss1Lesson1PracticeData;
                independentPracticeData = jhs2s5ss1Lesson1IndependentQuizData;
                quizData = jhs2s5ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs2s5ss1Lesson2GetReadyData;
                learnData = jhs2s5ss1Lesson2LearnData;
                practiceData = jhs2s5ss1Lesson2PracticeData;
                independentPracticeData = jhs2s5ss1Lesson2IndependentQuizData;
                quizData = jhs2s5ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs2s5ss1Lesson3GetReadyData;
                learnData = jhs2s5ss1Lesson3LearnData;
                practiceData = jhs2s5ss1Lesson3PracticeData;
                independentPracticeData = jhs2s5ss1Lesson3IndependentQuizData;
                quizData = jhs2s5ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = jhs2s5ss1Lesson4GetReadyData;
                learnData = jhs2s5ss1Lesson4LearnData;
                practiceData = jhs2s5ss1Lesson4PracticeData;
                independentPracticeData = jhs2s5ss1Lesson4IndependentQuizData;
                quizData = jhs2s5ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = jhs2s5ss1Lesson5GetReadyData;
                learnData = jhs2s5ss1Lesson5LearnData;
                practiceData = jhs2s5ss1Lesson5PracticeData;
                independentPracticeData = jhs2s5ss1Lesson5IndependentQuizData;
                quizData = jhs2s5ss1Lesson5QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = jhs2s5ss1Lesson6GetReadyData;
                learnData = jhs2s5ss1Lesson6LearnData;
                practiceData = jhs2s5ss1Lesson6PracticeData;
                independentPracticeData = jhs2s5ss1Lesson6IndependentQuizData;
                quizData = jhs2s5ss1Lesson6QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = jhs2s5ss1Lesson7GetReadyData;
                learnData = jhs2s5ss1Lesson7LearnData;
                practiceData = jhs2s5ss1Lesson7PracticeData;
                independentPracticeData = jhs2s5ss1Lesson7IndependentQuizData;
                quizData = jhs2s5ss1Lesson7QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 7) {
                getReadyData = jhs2s5ss1Lesson8GetReadyData;
                learnData = jhs2s5ss1Lesson8LearnData;
                practiceData = jhs2s5ss1Lesson8PracticeData;
                independentPracticeData = jhs2s5ss1Lesson8IndependentQuizData;
                quizData = jhs2s5ss1Lesson8QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 8) {
                getReadyData = jhs2s5ss1Lesson9GetReadyData;
                learnData = jhs2s5ss1Lesson9LearnData;
                practiceData = jhs2s5ss1Lesson9PracticeData;
                independentPracticeData = jhs2s5ss1Lesson9IndependentQuizData;
                quizData = jhs2s5ss1Lesson9QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 9) {
                getReadyData = jhs2s5ss1Lesson10GetReadyData;
                learnData = jhs2s5ss1Lesson10LearnData;
                practiceData = jhs2s5ss1Lesson10PracticeData;
                independentPracticeData = jhs2s5ss1Lesson10IndependentQuizData;
                quizData = jhs2s5ss1Lesson10QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 10) {
                getReadyData = jhs2s5ss1Lesson11GetReadyData;
                learnData = jhs2s5ss1Lesson11LearnData;
                practiceData = jhs2s5ss1Lesson11PracticeData;
                independentPracticeData = jhs2s5ss1Lesson11IndependentQuizData;
                quizData = jhs2s5ss1Lesson11QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 11) {
                getReadyData = jhs2s5ss1Lesson12GetReadyData;
                learnData = jhs2s5ss1Lesson12LearnData;
                practiceData = jhs2s5ss1Lesson12PracticeData;
                independentPracticeData = jhs2s5ss1Lesson12IndependentQuizData;
                quizData = jhs2s5ss1Lesson12QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 12) {
                getReadyData = jhs2s5ss1Lesson13GetReadyData;
                learnData = jhs2s5ss1Lesson13LearnData;
                practiceData = jhs2s5ss1Lesson13PracticeData;
                independentPracticeData = jhs2s5ss1Lesson13IndependentQuizData;
                quizData = jhs2s5ss1Lesson13QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 13) {
                getReadyData = jhs2s5ss1Lesson14GetReadyData;
                learnData = jhs2s5ss1Lesson14LearnData;
                practiceData = jhs2s5ss1Lesson14PracticeData;
                independentPracticeData = jhs2s5ss1Lesson14IndependentQuizData;
                quizData = jhs2s5ss1Lesson14QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 14) {
                getReadyData = jhs2s5ss1Lesson15GetReadyData;
                learnData = jhs2s5ss1Lesson15LearnData;
                practiceData = jhs2s5ss1Lesson15PracticeData;
                independentPracticeData = jhs2s5ss1Lesson15IndependentQuizData;
                quizData = jhs2s5ss1Lesson15QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 15) {
                getReadyData = jhs2s5ss1Lesson16GetReadyData;
                learnData = jhs2s5ss1Lesson16LearnData;
                practiceData = jhs2s5ss1Lesson16PracticeData;
                independentPracticeData = jhs2s5ss1Lesson16IndependentQuizData;
                quizData = jhs2s5ss1Lesson16QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 16) {
                getReadyData = jhs2s5ss1Lesson17GetReadyData;
                learnData = jhs2s5ss1Lesson17LearnData;
                practiceData = jhs2s5ss1Lesson17PracticeData;
                independentPracticeData = jhs2s5ss1Lesson17IndependentQuizData;
                quizData = jhs2s5ss1Lesson17QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 17) {
                getReadyData = jhs2s5ss1Lesson18GetReadyData;
                learnData = jhs2s5ss1Lesson18LearnData;
                practiceData = jhs2s5ss1Lesson18PracticeData;
                independentPracticeData = jhs2s5ss1Lesson18IndependentQuizData;
                quizData = jhs2s5ss1Lesson18QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 18) {
                getReadyData = jhs2s5ss1Lesson19GetReadyData;
                learnData = jhs2s5ss1Lesson19LearnData;
                practiceData = jhs2s5ss1Lesson19PracticeData;
                independentPracticeData = jhs2s5ss1Lesson19IndependentQuizData;
                quizData = jhs2s5ss1Lesson19QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 19) {
                getReadyData = jhs2s5ss1Lesson20GetReadyData;
                learnData = jhs2s5ss1Lesson20LearnData;
                practiceData = jhs2s5ss1Lesson20PracticeData;
                independentPracticeData = jhs2s5ss1Lesson20IndependentQuizData;
                quizData = jhs2s5ss1Lesson20QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 20) {
                getReadyData = jhs2s5ss1Lesson21GetReadyData;
                learnData = jhs2s5ss1Lesson21LearnData;
                practiceData = jhs2s5ss1Lesson21PracticeData;
                independentPracticeData = jhs2s5ss1Lesson21IndependentQuizData;
                quizData = jhs2s5ss1Lesson21QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "English" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 21) {
                getReadyData = jhs2s5ss1Lesson22GetReadyData;
                learnData = jhs2s5ss1Lesson22LearnData;
                practiceData = jhs2s5ss1Lesson22PracticeData;
                independentPracticeData = jhs2s5ss1Lesson22IndependentQuizData;
                quizData = jhs2s5ss1Lesson22QuizData;
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
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs3s2ss1Lesson1GetReadyData;
                learnData = jhs3s2ss1Lesson1LearnData;
                practiceData = jhs3s2ss1Lesson1PracticeData;
                independentPracticeData = jhs3s2ss1Lesson1IndependentQuizData;
                quizData = jhs3s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs3s2ss1Lesson2GetReadyData;
                learnData = jhs3s2ss1Lesson2LearnData;
                practiceData = jhs3s2ss1Lesson2PracticeData;
                independentPracticeData = jhs3s2ss1Lesson2IndependentQuizData;
                quizData = jhs3s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs3s2ss1Lesson3GetReadyData;
                learnData = jhs3s2ss1Lesson3LearnData;
                practiceData = jhs3s2ss1Lesson3PracticeData;
                independentPracticeData = jhs3s2ss1Lesson3IndependentQuizData;
                quizData = jhs3s2ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = jhs3s2ss1Lesson4GetReadyData;
                learnData = jhs3s2ss1Lesson4LearnData;
                practiceData = jhs3s2ss1Lesson4PracticeData;
                independentPracticeData = jhs3s2ss1Lesson4IndependentQuizData;
                quizData = jhs3s2ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = jhs3s2ss1Lesson5GetReadyData;
                learnData = jhs3s2ss1Lesson5LearnData;
                practiceData = jhs3s2ss1Lesson5PracticeData;
                independentPracticeData = jhs3s2ss1Lesson5IndependentQuizData;
                quizData = jhs3s2ss1Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = jhs3s2ss1Lesson6GetReadyData;
                learnData = jhs3s2ss1Lesson6LearnData;
                practiceData = jhs3s2ss1Lesson6PracticeData;
                independentPracticeData = jhs3s2ss1Lesson6IndependentQuizData;
                quizData = jhs3s2ss1Lesson6QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = jhs3s2ss1Lesson7GetReadyData;
                learnData = jhs3s2ss1Lesson7LearnData;
                practiceData = jhs3s2ss1Lesson7PracticeData;
                independentPracticeData = jhs3s2ss1Lesson7IndependentQuizData;
                quizData = jhs3s2ss1Lesson7QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 7) {
                getReadyData = jhs3s2ss1Lesson8GetReadyData;
                learnData = jhs3s2ss1Lesson8LearnData;
                practiceData = jhs3s2ss1Lesson8PracticeData;
                independentPracticeData = jhs3s2ss1Lesson8IndependentQuizData;
                quizData = jhs3s2ss1Lesson8QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 8) {
                getReadyData = jhs3s2ss1Lesson9GetReadyData;
                learnData = jhs3s2ss1Lesson9LearnData;
                practiceData = jhs3s2ss1Lesson9PracticeData;
                independentPracticeData = jhs3s2ss1Lesson9IndependentQuizData;
                quizData = jhs3s2ss1Lesson9QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 9) {
                getReadyData = jhs3s2ss1Lesson10GetReadyData;
                learnData = jhs3s2ss1Lesson10LearnData;
                practiceData = jhs3s2ss1Lesson10PracticeData;
                independentPracticeData = jhs3s2ss1Lesson10IndependentQuizData;
                quizData = jhs3s2ss1Lesson10QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 10) {
                getReadyData = jhs3s2ss1Lesson11GetReadyData;
                learnData = jhs3s2ss1Lesson11LearnData;
                practiceData = jhs3s2ss1Lesson11PracticeData;
                independentPracticeData = jhs3s2ss1Lesson11IndependentQuizData;
                quizData = jhs3s2ss1Lesson11QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 11) {
                getReadyData = jhs3s2ss1Lesson12GetReadyData;
                learnData = jhs3s2ss1Lesson12LearnData;
                practiceData = jhs3s2ss1Lesson12PracticeData;
                independentPracticeData = jhs3s2ss1Lesson12IndependentQuizData;
                quizData = jhs3s2ss1Lesson12QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 12) {
                getReadyData = jhs3s2ss1Lesson13GetReadyData;
                learnData = jhs3s2ss1Lesson13LearnData;
                practiceData = jhs3s2ss1Lesson13PracticeData;
                independentPracticeData = jhs3s2ss1Lesson13IndependentQuizData;
                quizData = jhs3s2ss1Lesson13QuizData;
              }
              // if (grade == "JHS 3" &&
              //     courseTitle == "English" &&
              //     sIndex == 1 &&
              //     ssIndex == 0 &&
              //     lIndex == 9) {
              //   getReadyData = jhs3s2ss1Lesson10GetReadyData;
              //   learnData = jhs3s2ss1Lesson10LearnData;
              //   practiceData = jhs3s2ss1Lesson10PracticeData;
              //   independentPracticeData = jhs3s2ss1Lesson10IndependentQuizData;
              //   quizData = jhs3s2ss1Lesson10QuizData;
              // }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = jhs3s2ss2Lesson1GetReadyData;
                learnData = jhs3s2ss2Lesson1LearnData;
                practiceData = jhs3s2ss2Lesson1PracticeData;
                independentPracticeData = jhs3s2ss2Lesson1IndependentQuizData;
                quizData = jhs3s2ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs3s3ss1Lesson1GetReadyData;
                learnData = jhs3s3ss1Lesson1LearnData;
                practiceData = jhs3s3ss1Lesson1PracticeData;
                independentPracticeData = jhs3s3ss1Lesson1IndependentQuizData;
                quizData = jhs3s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs3s3ss1Lesson3GetReadyData;
                learnData = jhs3s3ss1Lesson3LearnData;
                practiceData = jhs3s3ss1Lesson3PracticeData;
                independentPracticeData = jhs3s3ss1Lesson3IndependentQuizData;
                quizData = jhs3s3ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs3s3ss1Lesson2GetReadyData;
                learnData = jhs3s3ss1Lesson2LearnData;
                practiceData = jhs3s3ss1Lesson2PracticeData;
                independentPracticeData = jhs3s3ss1Lesson2IndependentQuizData;
                quizData = jhs3s3ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = jhs3s3ss1Lesson4GetReadyData;
                learnData = jhs3s3ss1Lesson4LearnData;
                practiceData = jhs3s3ss1Lesson4PracticeData;
                independentPracticeData = jhs3s3ss1Lesson4IndependentQuizData;
                quizData = jhs3s3ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = jhs3s3ss1Lesson5GetReadyData;
                learnData = jhs3s3ss1Lesson5LearnData;
                practiceData = jhs3s3ss1Lesson5PracticeData;
                independentPracticeData = jhs3s3ss1Lesson5IndependentQuizData;
                quizData = jhs3s3ss1Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = jhs3s3ss1Lesson6GetReadyData;
                learnData = jhs3s3ss1Lesson6LearnData;
                practiceData = jhs3s3ss1Lesson6PracticeData;
                independentPracticeData = jhs3s3ss1Lesson6IndependentQuizData;
                quizData = jhs3s3ss1Lesson6QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = jhs3s3ss1Lesson7GetReadyData;
                learnData = jhs3s3ss1Lesson7LearnData;
                practiceData = jhs3s3ss1Lesson7PracticeData;
                independentPracticeData = jhs3s3ss1Lesson7IndependentQuizData;
                quizData = jhs3s3ss1Lesson7QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 7) {
                getReadyData = jhs3s3ss1Lesson8GetReadyData;
                learnData = jhs3s3ss1Lesson8LearnData;
                practiceData = jhs3s3ss1Lesson8PracticeData;
                independentPracticeData = jhs3s3ss1Lesson8IndependentQuizData;
                quizData = jhs3s3ss1Lesson8QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 8) {
                getReadyData = jhs3s3ss1Lesson9GetReadyData;
                learnData = jhs3s3ss1Lesson9LearnData;
                practiceData = jhs3s3ss1Lesson9PracticeData;
                independentPracticeData = jhs3s3ss1Lesson9IndependentQuizData;
                quizData = jhs3s3ss1Lesson9QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = jhs3s3ss2Lesson1GetReadyData;
                learnData = jhs3s3ss2Lesson1LearnData;
                practiceData = jhs3s3ss2Lesson1PracticeData;
                independentPracticeData = jhs3s3ss2Lesson1IndependentQuizData;
                quizData = jhs3s3ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = jhs3s3ss3Lesson1GetReadyData;
                learnData = jhs3s3ss3Lesson1LearnData;
                practiceData = jhs3s3ss3Lesson1PracticeData;
                independentPracticeData = jhs3s3ss3Lesson1IndependentQuizData;
                quizData = jhs3s3ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = jhs3s3ss3Lesson2GetReadyData;
                learnData = jhs3s3ss3Lesson2LearnData;
                practiceData = jhs3s3ss3Lesson2PracticeData;
                independentPracticeData = jhs3s3ss3Lesson2IndependentQuizData;
                quizData = jhs3s3ss3Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = jhs3s4ss1Lesson1GetReadyData;
                learnData = jhs3s4ss1Lesson1LearnData;
                practiceData = jhs3s4ss1Lesson1PracticeData;
                independentPracticeData = jhs3s4ss1Lesson1IndependentQuizData;
                quizData = jhs3s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = jhs3s4ss1Lesson2GetReadyData;
                learnData = jhs3s4ss1Lesson2LearnData;
                practiceData = jhs3s4ss1Lesson2PracticeData;
                independentPracticeData = jhs3s4ss1Lesson2IndependentQuizData;
                quizData = jhs3s4ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = jhs3s4ss1Lesson3GetReadyData;
                learnData = jhs3s4ss1Lesson3LearnData;
                practiceData = jhs3s4ss1Lesson3PracticeData;
                independentPracticeData = jhs3s4ss1Lesson3IndependentQuizData;
                quizData = jhs3s4ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = jhs3s4ss1Lesson4GetReadyData;
                learnData = jhs3s4ss1Lesson4LearnData;
                practiceData = jhs3s4ss1Lesson4PracticeData;
                independentPracticeData = jhs3s4ss1Lesson4IndependentQuizData;
                quizData = jhs3s4ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = jhs3s4ss2Lesson1GetReadyData;
                learnData = jhs3s4ss2Lesson1LearnData;
                practiceData = jhs3s4ss2Lesson1PracticeData;
                independentPracticeData = jhs3s4ss2Lesson1IndependentQuizData;
                quizData = jhs3s4ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = jhs3s4ss2Lesson2GetReadyData;
                learnData = jhs3s4ss2Lesson2LearnData;
                practiceData = jhs3s4ss2Lesson2PracticeData;
                independentPracticeData = jhs3s4ss2Lesson2IndependentQuizData;
                quizData = jhs3s4ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = jhs3s4ss2Lesson3GetReadyData;
                learnData = jhs3s4ss2Lesson3LearnData;
                practiceData = jhs3s4ss2Lesson3PracticeData;
                independentPracticeData = jhs3s4ss2Lesson3IndependentQuizData;
                quizData = jhs3s4ss2Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                getReadyData = jhs3s4ss2Lesson4GetReadyData;
                learnData = jhs3s4ss2Lesson4LearnData;
                practiceData = jhs3s4ss2Lesson4PracticeData;
                independentPracticeData = jhs3s4ss2Lesson4IndependentQuizData;
                quizData = jhs3s4ss2Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                getReadyData = jhs3s4ss2Lesson5GetReadyData;
                learnData = jhs3s4ss2Lesson5LearnData;
                practiceData = jhs3s4ss2Lesson5PracticeData;
                independentPracticeData = jhs3s4ss2Lesson5IndependentQuizData;
                quizData = jhs3s4ss2Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 5) {
                getReadyData = jhs3s4ss2Lesson6GetReadyData;
                learnData = jhs3s4ss2Lesson6LearnData;
                practiceData = jhs3s4ss2Lesson6PracticeData;
                independentPracticeData = jhs3s4ss2Lesson6IndependentQuizData;
                quizData = jhs3s4ss2Lesson6QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 6) {
                getReadyData = jhs3s4ss2Lesson7GetReadyData;
                learnData = jhs3s4ss2Lesson7LearnData;
                practiceData = jhs3s4ss2Lesson7PracticeData;
                independentPracticeData = jhs3s4ss2Lesson7IndependentQuizData;
                quizData = jhs3s4ss2Lesson7QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 7) {
                getReadyData = jhs3s4ss2Lesson8GetReadyData;
                learnData = jhs3s4ss2Lesson8LearnData;
                practiceData = jhs3s4ss2Lesson8PracticeData;
                independentPracticeData = jhs3s4ss2Lesson8IndependentQuizData;
                quizData = jhs3s4ss2Lesson8QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = jhs3s4ss3Lesson1GetReadyData;
                learnData = jhs3s4ss3Lesson1LearnData;
                practiceData = jhs3s4ss3Lesson1PracticeData;
                independentPracticeData = jhs3s4ss3Lesson1IndependentQuizData;
                quizData = jhs3s4ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = jhs3s4ss3Lesson2GetReadyData;
                learnData = jhs3s4ss3Lesson2LearnData;
                practiceData = jhs3s4ss3Lesson2PracticeData;
                independentPracticeData = jhs3s4ss3Lesson2IndependentQuizData;
                quizData = jhs3s4ss3Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = jhs3s4ss3Lesson3GetReadyData;
                learnData = jhs3s4ss3Lesson3LearnData;
                practiceData = jhs3s4ss3Lesson3PracticeData;
                independentPracticeData = jhs3s4ss3Lesson3IndependentQuizData;
                quizData = jhs3s4ss3Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 3) {
                getReadyData = jhs3s4ss3Lesson4GetReadyData;
                learnData = jhs3s4ss3Lesson4LearnData;
                practiceData = jhs3s4ss3Lesson4PracticeData;
                independentPracticeData = jhs3s4ss3Lesson4IndependentQuizData;
                quizData = jhs3s4ss3Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 4) {
                getReadyData = jhs3s4ss3Lesson5GetReadyData;
                learnData = jhs3s4ss3Lesson5LearnData;
                practiceData = jhs3s4ss3Lesson5PracticeData;
                independentPracticeData = jhs3s4ss3Lesson5IndependentQuizData;
                quizData = jhs3s4ss3Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "English" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 5) {
                getReadyData = jhs3s4ss3Lesson6GetReadyData;
                learnData = jhs3s4ss3Lesson6LearnData;
                practiceData = jhs3s4ss3Lesson6PracticeData;
                independentPracticeData = jhs3s4ss3Lesson6IndependentQuizData;
                quizData = jhs3s4ss3Lesson6QuizData;
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
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s2ss1Lesson1GetReadyData;
                learnData = Scijh1s2ss1Lesson1LearnData;
                practiceData = Scijhs1s2ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s2ss1Lesson1IndependentQuizData;
                quizData = Scijhs1s2ss1Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s2ss1Lesson2GetReadyData;
                learnData = Scijh1s2ss1Lesson2LearnData;
                practiceData = Scijhs1s2ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s2ss1Lesson2IndependentQuizData;
                quizData = Scijhs1s2ss1Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s2ss2Lesson1GetReadyData;
                learnData = Scijh1s2ss2Lesson1LearnData;
                practiceData = Scijhs1s2ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s2ss2Lesson1IndependentQuizData;
                quizData = Scijhs1s2ss2Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s2ss2Lesson2GetReadyData;
                learnData = Scijh1s2ss2Lesson2LearnData;
                practiceData = Scijhs1s2ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s2ss2Lesson2IndependentQuizData;
                quizData = Scijhs1s2ss2Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s2ss3Lesson1GetReadyData;
                learnData = Scijh1s2ss3Lesson1LearnData;
                practiceData = Scijhs1s2ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s2ss3Lesson1IndependentQuizData;
                quizData = Scijhs1s2ss3Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s2ss3Lesson2GetReadyData;
                learnData = Scijh1s2ss3Lesson2LearnData;
                practiceData = Scijhs1s2ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s2ss3Lesson2IndependentQuizData;
                quizData = Scijhs1s2ss3Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s2ss4Lesson1GetReadyData;
                learnData = Scijh1s2ss4Lesson1LearnData;
                practiceData = Scijhs1s2ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s2ss4Lesson1IndependentQuizData;
                quizData = Scijhs1s2ss4Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s2ss4Lesson2GetReadyData;
                learnData = Scijh1s2ss4Lesson2LearnData;
                practiceData = Scijhs1s2ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s2ss4Lesson2IndependentQuizData;
                quizData = Scijhs1s2ss4Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s2ss4Lesson3GetReadyData;
                learnData = Scijh1s2ss4Lesson3LearnData;
                practiceData = Scijhs1s2ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s2ss4Lesson3IndependentQuizData;
                quizData = Scijhs1s2ss4Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 3) {
                getReadyData = SciJHS1s2ss4Lesson4GetReadyData;
                learnData = Scijh1s2ss4Lesson4LearnData;
                practiceData = Scijhs1s2ss4Lesson4PracticeData;
                independentPracticeData =
                    Scijhs1s2ss4Lesson4IndependentQuizData;
                quizData = Scijhs1s2ss4Lesson4QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s3ss1Lesson1GetReadyData;
                learnData = Scijh1s3ss1Lesson1LearnData;
                practiceData = Scijhs1s3ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s3ss1Lesson1IndependentQuizData;
                quizData = Scijhs1s3ss1Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s3ss1Lesson2GetReadyData;
                learnData = Scijh1s3ss1Lesson2LearnData;
                practiceData = Scijhs1s3ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s3ss1Lesson2IndependentQuizData;
                quizData = Scijhs1s3ss1Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s3ss1Lesson3GetReadyData;
                learnData = Scijh1s3ss1Lesson3LearnData;
                practiceData = Scijhs1s3ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s3ss1Lesson3IndependentQuizData;
                quizData = Scijhs1s3ss1Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s3ss2Lesson1GetReadyData;
                learnData = Scijh1s3ss2Lesson1LearnData;
                practiceData = Scijhs1s3ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s3ss2Lesson1IndependentQuizData;
                quizData = Scijhs1s3ss2Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s3ss2Lesson2GetReadyData;
                learnData = Scijh1s3ss2Lesson2LearnData;
                practiceData = Scijhs1s3ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s3ss2Lesson2IndependentQuizData;
                quizData = Scijhs1s3ss2Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s3ss2Lesson3GetReadyData;
                learnData = Scijh1s3ss2Lesson3LearnData;
                practiceData = Scijhs1s3ss2Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s3ss2Lesson3IndependentQuizData;
                quizData = Scijhs1s3ss2Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                getReadyData = SciJHS1s3ss2Lesson4GetReadyData;
                learnData = Scijh1s3ss2Lesson4LearnData;
                practiceData = Scijhs1s3ss2Lesson4PracticeData;
                independentPracticeData =
                    Scijhs1s3ss2Lesson4IndependentQuizData;
                quizData = Scijhs1s3ss2Lesson4QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                getReadyData = SciJHS1s3ss2Lesson5GetReadyData;
                learnData = Scijh1s3ss2Lesson5LearnData;
                practiceData = Scijhs1s3ss2Lesson5PracticeData;
                independentPracticeData =
                    Scijhs1s3ss2Lesson5IndependentQuizData;
                quizData = Scijhs1s3ss2Lesson5QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s3ss3Lesson1GetReadyData;
                learnData = Scijh1s3ss3Lesson1LearnData;
                practiceData = Scijhs1s3ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s3ss3Lesson1IndependentQuizData;
                quizData = Scijhs1s3ss3Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s3ss3Lesson2GetReadyData;
                learnData = Scijh1s3ss3Lesson2LearnData;
                practiceData = Scijhs1s3ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s3ss3Lesson2IndependentQuizData;
                quizData = Scijhs1s3ss3Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s3ss3Lesson3GetReadyData;
                learnData = Scijh1s3ss3Lesson3LearnData;
                practiceData = Scijhs1s3ss3Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s3ss3Lesson3IndependentQuizData;
                quizData = Scijhs1s3ss3Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 3) {
                getReadyData = SciJHS1s3ss3Lesson4GetReadyData;
                learnData = Scijh1s3ss3Lesson4LearnData;
                practiceData = Scijhs1s3ss3Lesson4PracticeData;
                independentPracticeData =
                    Scijhs1s3ss3Lesson4IndependentQuizData;
                quizData = Scijhs1s3ss3Lesson4QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s3ss4Lesson1GetReadyData;
                learnData = Scijh1s3ss4Lesson1LearnData;
                practiceData = Scijhs1s3ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s3ss4Lesson1IndependentQuizData;
                quizData = Scijhs1s3ss4Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s3ss4Lesson2GetReadyData;
                learnData = Scijh1s3ss4Lesson2LearnData;
                practiceData = Scijhs1s3ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s3ss4Lesson2IndependentQuizData;
                quizData = Scijhs1s3ss4Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s3ss4Lesson3GetReadyData;
                learnData = Scijh1s3ss4Lesson3LearnData;
                practiceData = Scijhs1s3ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s3ss4Lesson3IndependentQuizData;
                quizData = Scijhs1s3ss4Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s4ss1Lesson1GetReadyData;
                learnData = Scijh1s4ss1Lesson1LearnData;
                practiceData = Scijhs1s4ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s4ss1Lesson1IndependentQuizData;
                quizData = Scijhs1s4ss1Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s4ss1Lesson2GetReadyData;
                learnData = Scijh1s4ss1Lesson2LearnData;
                practiceData = Scijhs1s4ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s4ss1Lesson2IndependentQuizData;
                quizData = Scijhs1s4ss1Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s4ss1Lesson3GetReadyData;
                learnData = Scijh1s4ss1Lesson3LearnData;
                practiceData = Scijhs1s4ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s4ss1Lesson3IndependentQuizData;
                quizData = Scijhs1s4ss1Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS1s4ss1Lesson4GetReadyData;
                learnData = Scijh1s4ss1Lesson4LearnData;
                practiceData = Scijhs1s4ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs1s4ss1Lesson4IndependentQuizData;
                quizData = Scijhs1s4ss1Lesson4QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = SciJHS1s4ss1Lesson5GetReadyData;
                learnData = Scijh1s4ss1Lesson5LearnData;
                practiceData = Scijhs1s4ss1Lesson5PracticeData;
                independentPracticeData =
                    Scijhs1s4ss1Lesson5IndependentQuizData;
                quizData = Scijhs1s4ss1Lesson5QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = SciJHS1s4ss1Lesson6GetReadyData;
                learnData = Scijh1s4ss1Lesson6LearnData;
                practiceData = Scijhs1s4ss1Lesson6PracticeData;
                independentPracticeData =
                    Scijhs1s4ss1Lesson6IndependentQuizData;
                quizData = Scijhs1s4ss1Lesson6QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s4ss2Lesson1GetReadyData;
                learnData = Scijh1s4ss2Lesson1LearnData;
                practiceData = Scijhs1s4ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s4ss2Lesson1IndependentQuizData;
                quizData = Scijhs1s4ss2Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s4ss2Lesson2GetReadyData;
                learnData = Scijh1s4ss2Lesson2LearnData;
                practiceData = Scijhs1s4ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s4ss2Lesson2IndependentQuizData;
                quizData = Scijhs1s4ss2Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s4ss2Lesson3GetReadyData;
                learnData = Scijh1s4ss2Lesson3LearnData;
                practiceData = Scijhs1s4ss2Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s4ss2Lesson3IndependentQuizData;
                quizData = Scijhs1s4ss2Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                getReadyData = SciJHS1s4ss2Lesson4GetReadyData;
                learnData = Scijh1s4ss2Lesson4LearnData;
                practiceData = Scijhs1s4ss2Lesson4PracticeData;
                independentPracticeData =
                    Scijhs1s4ss2Lesson4IndependentQuizData;
                quizData = Scijhs1s4ss2Lesson4QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 4) {
                getReadyData = SciJHS1s4ss2Lesson5GetReadyData;
                learnData = Scijh1s4ss2Lesson5LearnData;
                practiceData = Scijhs1s4ss2Lesson5PracticeData;
                independentPracticeData =
                    Scijhs1s4ss2Lesson5IndependentQuizData;
                quizData = Scijhs1s4ss2Lesson5QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s4ss3Lesson1GetReadyData;
                learnData = Scijh1s4ss3Lesson1LearnData;
                practiceData = Scijhs1s4ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s4ss3Lesson1IndependentQuizData;
                quizData = Scijhs1s4ss3Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s4ss3Lesson2GetReadyData;
                learnData = Scijh1s4ss3Lesson2LearnData;
                practiceData = Scijhs1s4ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s4ss3Lesson2IndependentQuizData;
                quizData = Scijhs1s4ss3Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s4ss3Lesson3GetReadyData;
                learnData = Scijh1s4ss3Lesson3LearnData;
                practiceData = Scijhs1s4ss3Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s4ss3Lesson3IndependentQuizData;
                quizData = Scijhs1s4ss3Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s4ss4Lesson1GetReadyData;
                learnData = Scijh1s4ss4Lesson1LearnData;
                practiceData = Scijhs1s4ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s4ss4Lesson1IndependentQuizData;
                quizData = Scijhs1s4ss4Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s4ss4Lesson2GetReadyData;
                learnData = Scijh1s4ss4Lesson2LearnData;
                practiceData = Scijhs1s4ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s4ss4Lesson2IndependentQuizData;
                quizData = Scijhs1s4ss4Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s4ss4Lesson3GetReadyData;
                learnData = Scijh1s4ss4Lesson3LearnData;
                practiceData = Scijhs1s4ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s4ss4Lesson3IndependentQuizData;
                quizData = Scijhs1s4ss4Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 3) {
                getReadyData = SciJHS1s4ss4Lesson4GetReadyData;
                learnData = Scijh1s4ss4Lesson4LearnData;
                practiceData = Scijhs1s4ss4Lesson4PracticeData;
                independentPracticeData =
                    Scijhs1s4ss4Lesson4IndependentQuizData;
                quizData = Scijhs1s4ss4Lesson4QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 4) {
                getReadyData = SciJHS1s4ss4Lesson5GetReadyData;
                learnData = Scijh1s4ss4Lesson5LearnData;
                practiceData = Scijhs1s4ss4Lesson5PracticeData;
                independentPracticeData =
                    Scijhs1s4ss4Lesson5IndependentQuizData;
                quizData = Scijhs1s4ss4Lesson5QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 5) {
                getReadyData = SciJHS1s4ss4Lesson6GetReadyData;
                learnData = Scijh1s4ss4Lesson6LearnData;
                practiceData = Scijhs1s4ss4Lesson6PracticeData;
                independentPracticeData =
                    Scijhs1s4ss4Lesson6IndependentQuizData;
                quizData = Scijhs1s4ss4Lesson6QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 6) {
                getReadyData = SciJHS1s4ss4Lesson7GetReadyData;
                learnData = Scijh1s4ss4Lesson7LearnData;
                practiceData = Scijhs1s4ss4Lesson7PracticeData;
                independentPracticeData =
                    Scijhs1s4ss4Lesson7IndependentQuizData;
                quizData = Scijhs1s4ss4Lesson7QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 4 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s4ss5Lesson1GetReadyData;
                learnData = Scijh1s4ss5Lesson1LearnData;
                practiceData = Scijhs1s4ss5Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s4ss5Lesson1IndependentQuizData;
                quizData = Scijhs1s4ss5Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 4 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s4ss5Lesson2GetReadyData;
                learnData = Scijh1s4ss5Lesson2LearnData;
                practiceData = Scijhs1s4ss5Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s4ss5Lesson2IndependentQuizData;
                quizData = Scijhs1s4ss5Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s5ss1Lesson1GetReadyData;
                learnData = Scijh1s5ss1Lesson1LearnData;
                practiceData = Scijhs1s5ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s5ss1Lesson1IndependentQuizData;
                quizData = Scijhs1s5ss1Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s5ss1Lesson2GetReadyData;
                learnData = Scijh1s5ss1Lesson2LearnData;
                practiceData = Scijhs1s5ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s5ss1Lesson2IndependentQuizData;
                quizData = Scijhs1s5ss1Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s5ss1Lesson3GetReadyData;
                learnData = Scijh1s5ss1Lesson3LearnData;
                practiceData = Scijhs1s5ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s5ss1Lesson3IndependentQuizData;
                quizData = Scijhs1s5ss1Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s5ss2Lesson1GetReadyData;
                learnData = Scijh1s5ss2Lesson1LearnData;
                practiceData = Scijhs1s5ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s5ss2Lesson1IndependentQuizData;
                quizData = Scijhs1s5ss2Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s5ss2Lesson2GetReadyData;
                learnData = Scijh1s5ss2Lesson2LearnData;
                practiceData = Scijhs1s5ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s5ss2Lesson2IndependentQuizData;
                quizData = Scijhs1s5ss2Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s5ss3Lesson1GetReadyData;
                learnData = Scijh1s5ss3Lesson1LearnData;
                practiceData = Scijhs1s5ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s5ss3Lesson1IndependentQuizData;
                quizData = Scijhs1s5ss3Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s5ss4Lesson1GetReadyData;
                learnData = Scijh1s5ss4Lesson1LearnData;
                practiceData = Scijhs1s5ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s5ss4Lesson1IndependentQuizData;
                quizData = Scijhs1s5ss4Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s5ss4Lesson2GetReadyData;
                learnData = Scijh1s5ss4Lesson2LearnData;
                practiceData = Scijhs1s5ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s5ss4Lesson2IndependentQuizData;
                quizData = Scijhs1s5ss4Lesson2QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS1s5ss4Lesson3GetReadyData;
                learnData = Scijh1s5ss4Lesson3LearnData;
                practiceData = Scijhs1s5ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs1s5ss4Lesson3IndependentQuizData;
                quizData = Scijhs1s5ss4Lesson3QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 0) {
                getReadyData = SciJHS1s5ss5Lesson1GetReadyData;
                learnData = Scijh1s5ss5Lesson1LearnData;
                practiceData = Scijhs1s5ss5Lesson1PracticeData;
                independentPracticeData =
                    Scijhs1s5ss5Lesson1IndependentQuizData;
                quizData = Scijhs1s5ss5Lesson1QuizData;
              }
              if (courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 1) {
                getReadyData = SciJHS1s5ss5Lesson2GetReadyData;
                learnData = Scijh1s5ss5Lesson2LearnData;
                practiceData = Scijhs1s5ss5Lesson2PracticeData;
                independentPracticeData =
                    Scijhs1s5ss5Lesson2IndependentQuizData;
                quizData = Scijhs1s5ss5Lesson2QuizData;
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
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s2ss1Lesson1GetReadyData;
                learnData = Scijh2s2ss1Lesson1LearnData;
                practiceData = Scijhs2s2ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s2ss1Lesson1IndependentQuizData;
                quizData = Scijhs2s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s2ss1Lesson2GetReadyData;
                learnData = Scijh2s2ss1Lesson2LearnData;
                practiceData = Scijhs2s2ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s2ss1Lesson2IndependentQuizData;
                quizData = Scijhs2s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s2ss2Lesson1GetReadyData;
                learnData = Scijh2s2ss2Lesson1LearnData;
                practiceData = Scijhs2s2ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s2ss2Lesson1IndependentQuizData;
                quizData = Scijhs2s2ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s2ss2Lesson2GetReadyData;
                learnData = Scijh2s2ss2Lesson2LearnData;
                practiceData = Scijhs2s2ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s2ss2Lesson2IndependentQuizData;
                quizData = Scijhs2s2ss2Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s2ss3Lesson1GetReadyData;
                learnData = Scijh2s2ss3Lesson1LearnData;
                practiceData = Scijhs2s2ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s2ss3Lesson1IndependentQuizData;
                quizData = Scijhs2s2ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s2ss3Lesson2GetReadyData;
                learnData = Scijh2s2ss3Lesson2LearnData;
                practiceData = Scijhs2s2ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s2ss3Lesson2IndependentQuizData;
                quizData = Scijhs2s2ss3Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s2ss3Lesson3GetReadyData;
                learnData = Scijh2s2ss3Lesson3LearnData;
                practiceData = Scijhs2s2ss3Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s2ss3Lesson3IndependentQuizData;
                quizData = Scijhs2s2ss3Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s2ss4Lesson1GetReadyData;
                learnData = Scijh2s2ss4Lesson1LearnData;
                practiceData = Scijhs2s2ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s2ss4Lesson1IndependentQuizData;
                quizData = Scijhs2s2ss4Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s2ss4Lesson2GetReadyData;
                learnData = Scijh2s2ss4Lesson2LearnData;
                practiceData = Scijhs2s2ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s2ss4Lesson2IndependentQuizData;
                quizData = Scijhs2s2ss4Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s2ss4Lesson3GetReadyData;
                learnData = Scijh2s2ss4Lesson3LearnData;
                practiceData = Scijhs2s2ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s2ss4Lesson3IndependentQuizData;
                quizData = Scijhs2s2ss4Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s3ss1Lesson1GetReadyData;
                learnData = Scijh2s3ss1Lesson1LearnData;
                practiceData = Scijhs2s3ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s3ss1Lesson1IndependentQuizData;
                quizData = Scijhs2s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s3ss1Lesson2GetReadyData;
                learnData = Scijh2s3ss1Lesson2LearnData;
                practiceData = Scijhs2s3ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s3ss1Lesson2IndependentQuizData;
                quizData = Scijhs2s3ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s3ss1Lesson3GetReadyData;
                learnData = Scijh2s3ss1Lesson3LearnData;
                practiceData = Scijhs2s3ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s3ss1Lesson3IndependentQuizData;
                quizData = Scijhs2s3ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s3ss2Lesson1GetReadyData;
                learnData = Scijh2s3ss2Lesson1LearnData;
                practiceData = Scijhs2s3ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s3ss2Lesson1IndependentQuizData;
                quizData = Scijhs2s3ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s3ss3Lesson1GetReadyData;
                learnData = Scijh2s3ss3Lesson1LearnData;
                practiceData = Scijhs2s3ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s3ss3Lesson1IndependentQuizData;
                quizData = Scijhs2s3ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s3ss4Lesson1GetReadyData;
                learnData = Scijh2s3ss4Lesson1LearnData;
                practiceData = Scijhs2s3ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s3ss4Lesson1IndependentQuizData;
                quizData = Scijhs2s3ss4Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s3ss4Lesson2GetReadyData;
                learnData = Scijh2s3ss4Lesson2LearnData;
                practiceData = Scijhs2s3ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s3ss4Lesson2IndependentQuizData;
                quizData = Scijhs2s3ss4Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s4ss1Lesson1GetReadyData;
                learnData = Scijh2s4ss1Lesson1LearnData;
                practiceData = Scijhs2s4ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s4ss1Lesson1IndependentQuizData;
                quizData = Scijhs2s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s4ss1Lesson2GetReadyData;
                learnData = Scijh2s4ss1Lesson2LearnData;
                practiceData = Scijhs2s4ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s4ss1Lesson2IndependentQuizData;
                quizData = Scijhs2s4ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s4ss1Lesson3GetReadyData;
                learnData = Scijh2s4ss1Lesson3LearnData;
                practiceData = Scijhs2s4ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s4ss1Lesson3IndependentQuizData;
                quizData = Scijhs2s4ss1Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS2s4ss1Lesson4GetReadyData;
                learnData = Scijh2s4ss1Lesson4LearnData;
                practiceData = Scijhs2s4ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs2s4ss1Lesson4IndependentQuizData;
                quizData = Scijhs2s4ss1Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = SciJHS2s4ss1Lesson5GetReadyData;
                learnData = Scijh2s4ss1Lesson5LearnData;
                practiceData = Scijhs2s4ss1Lesson5PracticeData;
                independentPracticeData =
                    Scijhs2s4ss1Lesson5IndependentQuizData;
                quizData = Scijhs2s4ss1Lesson5QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s4ss2Lesson1GetReadyData;
                learnData = Scijh2s4ss2Lesson1LearnData;
                practiceData = Scijhs2s4ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s4ss2Lesson1IndependentQuizData;
                quizData = Scijhs2s4ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s4ss2Lesson2GetReadyData;
                learnData = Scijh2s4ss2Lesson2LearnData;
                practiceData = Scijhs2s4ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s4ss2Lesson2IndependentQuizData;
                quizData = Scijhs2s4ss2Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s4ss3Lesson1GetReadyData;
                learnData = Scijh2s4ss3Lesson1LearnData;
                practiceData = Scijhs2s4ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s4ss3Lesson1IndependentQuizData;
                quizData = Scijhs2s4ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s4ss3Lesson2GetReadyData;
                learnData = Scijh2s4ss3Lesson2LearnData;
                practiceData = Scijhs2s4ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s4ss3Lesson2IndependentQuizData;
                quizData = Scijhs2s4ss3Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s4ss4Lesson1GetReadyData;
                learnData = Scijh2s4ss4Lesson1LearnData;
                practiceData = Scijhs2s4ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s4ss4Lesson1IndependentQuizData;
                quizData = Scijhs2s4ss4Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s4ss4Lesson2GetReadyData;
                learnData = Scijh2s4ss4Lesson2LearnData;
                practiceData = Scijhs2s4ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s4ss4Lesson2IndependentQuizData;
                quizData = Scijhs2s4ss4Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s4ss4Lesson3GetReadyData;
                learnData = Scijh2s4ss4Lesson3LearnData;
                practiceData = Scijhs2s4ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s4ss4Lesson3IndependentQuizData;
                quizData = Scijhs2s4ss4Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 4 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s4ss5Lesson1GetReadyData;
                learnData = Scijh2s4ss5Lesson1LearnData;
                practiceData = Scijhs2s4ss5Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s4ss5Lesson1IndependentQuizData;
                quizData = Scijhs2s4ss5Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 4 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s4ss5Lesson2GetReadyData;
                learnData = Scijh2s4ss5Lesson2LearnData;
                practiceData = Scijhs2s4ss5Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s4ss5Lesson2IndependentQuizData;
                quizData = Scijhs2s4ss5Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s5ss1Lesson1GetReadyData;
                learnData = Scijh2s5ss1Lesson1LearnData;
                practiceData = Scijhs2s5ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s5ss1Lesson1IndependentQuizData;
                quizData = Scijhs2s5ss1Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s5ss1Lesson2GetReadyData;
                learnData = Scijh2s5ss1Lesson2LearnData;
                practiceData = Scijhs2s5ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s5ss1Lesson2IndependentQuizData;
                quizData = Scijhs2s5ss1Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s5ss2Lesson1GetReadyData;
                learnData = Scijh2s5ss2Lesson1LearnData;
                practiceData = Scijhs2s5ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s5ss2Lesson1IndependentQuizData;
                quizData = Scijhs2s5ss2Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s5ss2Lesson2GetReadyData;
                learnData = Scijh2s5ss2Lesson2LearnData;
                practiceData = Scijhs2s5ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s5ss2Lesson2IndependentQuizData;
                quizData = Scijhs2s5ss2Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s5ss2Lesson3GetReadyData;
                learnData = Scijh2s5ss2Lesson3LearnData;
                practiceData = Scijhs2s5ss2Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s5ss2Lesson3IndependentQuizData;
                quizData = Scijhs2s5ss2Lesson3QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 3) {
                getReadyData = SciJHS2s5ss2Lesson4GetReadyData;
                learnData = Scijh2s5ss2Lesson4LearnData;
                practiceData = Scijhs2s5ss2Lesson4PracticeData;
                independentPracticeData =
                    Scijhs2s5ss2Lesson4IndependentQuizData;
                quizData = Scijhs2s5ss2Lesson4QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s5ss3Lesson1GetReadyData;
                learnData = Scijh2s5ss3Lesson1LearnData;
                practiceData = Scijhs2s5ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s5ss3Lesson1IndependentQuizData;
                quizData = Scijhs2s5ss3Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s5ss3Lesson2GetReadyData;
                learnData = Scijh2s5ss3Lesson2LearnData;
                practiceData = Scijhs2s5ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s5ss3Lesson2IndependentQuizData;
                quizData = Scijhs2s5ss3Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s5ss4Lesson1GetReadyData;
                learnData = Scijh2s5ss4Lesson1LearnData;
                practiceData = Scijhs2s5ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s5ss4Lesson1IndependentQuizData;
                quizData = Scijhs2s5ss4Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 0) {
                getReadyData = SciJHS2s5ss5Lesson1GetReadyData;
                learnData = Scijh2s5ss5Lesson1LearnData;
                practiceData = Scijhs2s5ss5Lesson1PracticeData;
                independentPracticeData =
                    Scijhs2s5ss5Lesson1IndependentQuizData;
                quizData = Scijhs2s5ss5Lesson1QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 1) {
                getReadyData = SciJHS2s5ss5Lesson2GetReadyData;
                learnData = Scijh2s5ss5Lesson2LearnData;
                practiceData = Scijhs2s5ss5Lesson2PracticeData;
                independentPracticeData =
                    Scijhs2s5ss5Lesson2IndependentQuizData;
                quizData = Scijhs2s5ss5Lesson2QuizData;
              }
              if (grade == "JHS 2" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 2) {
                getReadyData = SciJHS2s5ss5Lesson3GetReadyData;
                learnData = Scijh2s5ss5Lesson3LearnData;
                practiceData = Scijhs2s5ss5Lesson3PracticeData;
                independentPracticeData =
                    Scijhs2s5ss5Lesson3IndependentQuizData;
                quizData = Scijhs2s5ss5Lesson3QuizData;
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
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s2ss1Lesson1GetReadyData;
                learnData = Scijh3s2ss1Lesson1LearnData;
                practiceData = Scijhs3s2ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s2ss1Lesson1IndependentQuizData;
                quizData = Scijhs3s2ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s2ss1Lesson2GetReadyData;
                learnData = Scijh3s2ss1Lesson2LearnData;
                practiceData = Scijhs3s2ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s2ss1Lesson2IndependentQuizData;
                quizData = Scijhs3s2ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s2ss2Lesson1GetReadyData;
                learnData = Scijh3s2ss2Lesson1LearnData;
                practiceData = Scijhs3s2ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s2ss2Lesson1IndependentQuizData;
                quizData = Scijhs3s2ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s2ss2Lesson2GetReadyData;
                learnData = Scijh3s2ss2Lesson2LearnData;
                practiceData = Scijhs3s2ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s2ss2Lesson2IndependentQuizData;
                quizData = Scijhs3s2ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s2ss3Lesson1GetReadyData;
                learnData = Scijh3s2ss3Lesson1LearnData;
                practiceData = Scijhs3s2ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s2ss3Lesson1IndependentQuizData;
                quizData = Scijhs3s2ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s2ss3Lesson2GetReadyData;
                learnData = Scijh3s2ss3Lesson2LearnData;
                practiceData = Scijhs3s2ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s2ss3Lesson2IndependentQuizData;
                quizData = Scijhs3s2ss3Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s2ss3Lesson3GetReadyData;
                learnData = Scijh3s2ss3Lesson3LearnData;
                practiceData = Scijhs3s2ss3Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s2ss3Lesson3IndependentQuizData;
                quizData = Scijhs3s2ss3Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s2ss4Lesson1GetReadyData;
                learnData = Scijh3s2ss4Lesson1LearnData;
                practiceData = Scijhs3s2ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s2ss4Lesson1IndependentQuizData;
                quizData = Scijhs3s2ss4Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s2ss4Lesson2GetReadyData;
                learnData = Scijh3s2ss4Lesson2LearnData;
                practiceData = Scijhs3s2ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s2ss4Lesson2IndependentQuizData;
                quizData = Scijhs3s2ss4Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s2ss4Lesson3GetReadyData;
                learnData = Scijh3s2ss4Lesson3LearnData;
                practiceData = Scijhs3s2ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s2ss4Lesson3IndependentQuizData;
                quizData = Scijhs3s2ss4Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 1 &&
                  ssIndex == 3 &&
                  lIndex == 3) {
                getReadyData = SciJHS3s2ss4Lesson4GetReadyData;
                learnData = Scijh3s2ss4Lesson4LearnData;
                practiceData = Scijhs3s2ss4Lesson4PracticeData;
                independentPracticeData =
                    Scijhs3s2ss4Lesson4IndependentQuizData;
                quizData = Scijhs3s2ss4Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s3ss1Lesson1GetReadyData;
                learnData = Scijh3s3ss1Lesson1LearnData;
                practiceData = Scijhs3s3ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s3ss1Lesson1IndependentQuizData;
                quizData = Scijhs3s3ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s3ss1Lesson2GetReadyData;
                learnData = Scijh3s3ss1Lesson2LearnData;
                practiceData = Scijhs3s3ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s3ss1Lesson2IndependentQuizData;
                quizData = Scijhs3s3ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s3ss1Lesson3GetReadyData;
                learnData = Scijh3s3ss1Lesson3LearnData;
                practiceData = Scijhs3s3ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s3ss1Lesson3IndependentQuizData;
                quizData = Scijhs3s3ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS3s3ss1Lesson4GetReadyData;
                learnData = Scijh3s3ss1Lesson4LearnData;
                practiceData = Scijhs3s3ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs3s3ss1Lesson4IndependentQuizData;
                quizData = Scijhs3s3ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = SciJHS3s3ss1Lesson5GetReadyData;
                learnData = Scijh3s3ss1Lesson5LearnData;
                practiceData = Scijhs3s3ss1Lesson5PracticeData;
                independentPracticeData =
                    Scijhs3s3ss1Lesson5IndependentQuizData;
                quizData = Scijhs3s3ss1Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = SciJHS3s3ss1Lesson6GetReadyData;
                learnData = Scijh3s3ss1Lesson6LearnData;
                practiceData = Scijhs3s3ss1Lesson6PracticeData;
                independentPracticeData =
                    Scijhs3s3ss1Lesson6IndependentQuizData;
                quizData = Scijhs3s3ss1Lesson6QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = SciJHS3s3ss1Lesson7GetReadyData;
                learnData = Scijh3s3ss1Lesson7LearnData;
                practiceData = Scijhs3s3ss1Lesson7PracticeData;
                independentPracticeData =
                    Scijhs3s3ss1Lesson7IndependentQuizData;
                quizData = Scijhs3s3ss1Lesson7QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s3ss2Lesson1GetReadyData;
                learnData = Scijh3s3ss2Lesson1LearnData;
                practiceData = Scijhs3s3ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s3ss2Lesson1IndependentQuizData;
                quizData = Scijhs3s3ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s3ss2Lesson2GetReadyData;
                learnData = Scijh3s3ss2Lesson2LearnData;
                practiceData = Scijhs3s3ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s3ss2Lesson2IndependentQuizData;
                quizData = Scijhs3s3ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s3ss2Lesson3GetReadyData;
                learnData = Scijh3s3ss2Lesson3LearnData;
                practiceData = Scijhs3s3ss2Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s3ss2Lesson3IndependentQuizData;
                quizData = Scijhs3s3ss2Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s3ss3Lesson1GetReadyData;
                learnData = Scijh3s3ss3Lesson1LearnData;
                practiceData = Scijhs3s3ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s3ss3Lesson1IndependentQuizData;
                quizData = Scijhs3s3ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s3ss3Lesson2GetReadyData;
                learnData = Scijh3s3ss3Lesson2LearnData;
                practiceData = Scijhs3s3ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s3ss3Lesson2IndependentQuizData;
                quizData = Scijhs3s3ss3Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s3ss3Lesson3GetReadyData;
                learnData = Scijh3s3ss3Lesson3LearnData;
                practiceData = Scijhs3s3ss3Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s3ss3Lesson3IndependentQuizData;
                quizData = Scijhs3s3ss3Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s3ss4Lesson1GetReadyData;
                learnData = Scijh3s3ss4Lesson1LearnData;
                practiceData = Scijhs3s3ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s3ss4Lesson1IndependentQuizData;
                quizData = Scijhs3s3ss4Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s3ss4Lesson2GetReadyData;
                learnData = Scijh3s3ss4Lesson2LearnData;
                practiceData = Scijhs3s3ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s3ss4Lesson2IndependentQuizData;
                quizData = Scijhs3s3ss4Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 2 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s3ss4Lesson3GetReadyData;
                learnData = Scijh3s3ss4Lesson3LearnData;
                practiceData = Scijhs3s3ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s3ss4Lesson3IndependentQuizData;
                quizData = Scijhs3s3ss4Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s4ss1Lesson1GetReadyData;
                learnData = Scijh3s4ss1Lesson1LearnData;
                practiceData = Scijhs3s4ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s4ss1Lesson1IndependentQuizData;
                quizData = Scijhs3s4ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s4ss1Lesson2GetReadyData;
                learnData = Scijh3s4ss1Lesson2LearnData;
                practiceData = Scijhs3s4ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s4ss1Lesson2IndependentQuizData;
                quizData = Scijhs3s4ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s4ss1Lesson3GetReadyData;
                learnData = Scijh3s4ss1Lesson3LearnData;
                practiceData = Scijhs3s4ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s4ss1Lesson3IndependentQuizData;
                quizData = Scijhs3s4ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS3s4ss1Lesson4GetReadyData;
                learnData = Scijh3s4ss1Lesson4LearnData;
                practiceData = Scijhs3s4ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs3s4ss1Lesson4IndependentQuizData;
                quizData = Scijhs3s4ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = SciJHS3s4ss1Lesson5GetReadyData;
                learnData = Scijh3s4ss1Lesson5LearnData;
                practiceData = Scijhs3s4ss1Lesson5PracticeData;
                independentPracticeData =
                    Scijhs3s4ss1Lesson5IndependentQuizData;
                quizData = Scijhs3s4ss1Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = SciJHS3s4ss1Lesson6GetReadyData;
                learnData = Scijh3s4ss1Lesson6LearnData;
                practiceData = Scijhs3s4ss1Lesson6PracticeData;
                independentPracticeData =
                    Scijhs3s4ss1Lesson6IndependentQuizData;
                quizData = Scijhs3s4ss1Lesson6QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 0 &&
                  lIndex == 6) {
                getReadyData = SciJHS3s4ss1Lesson7GetReadyData;
                learnData = Scijh3s4ss1Lesson7LearnData;
                practiceData = Scijhs3s4ss1Lesson7PracticeData;
                independentPracticeData =
                    Scijhs3s4ss1Lesson7IndependentQuizData;
                quizData = Scijhs3s4ss1Lesson7QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s4ss2Lesson1GetReadyData;
                learnData = Scijh3s4ss2Lesson1LearnData;
                practiceData = Scijhs3s4ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s4ss2Lesson1IndependentQuizData;
                quizData = Scijhs3s4ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s4ss2Lesson2GetReadyData;
                learnData = Scijh3s4ss2Lesson2LearnData;
                practiceData = Scijhs3s4ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s4ss2Lesson2IndependentQuizData;
                quizData = Scijhs3s4ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s4ss3Lesson1GetReadyData;
                learnData = Scijh3s4ss3Lesson1LearnData;
                practiceData = Scijhs3s4ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s4ss3Lesson1IndependentQuizData;
                quizData = Scijhs3s4ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s4ss3Lesson2GetReadyData;
                learnData = Scijh3s4ss3Lesson2LearnData;
                practiceData = Scijhs3s4ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s4ss3Lesson2IndependentQuizData;
                quizData = Scijhs3s4ss3Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s4ss4Lesson1GetReadyData;
                learnData = Scijh3s4ss4Lesson1LearnData;
                practiceData = Scijhs3s4ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s4ss4Lesson1IndependentQuizData;
                quizData = Scijhs3s4ss4Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s4ss4Lesson2GetReadyData;
                learnData = Scijh3s4ss4Lesson2LearnData;
                practiceData = Scijhs3s4ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s4ss4Lesson2IndependentQuizData;
                quizData = Scijhs3s4ss4Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 3 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s4ss4Lesson3GetReadyData;
                learnData = Scijh3s4ss4Lesson3LearnData;
                practiceData = Scijhs3s4ss4Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s4ss4Lesson3IndependentQuizData;
                quizData = Scijhs3s4ss4Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 4 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s4ss5Lesson1GetReadyData;
                learnData = Scijh3s4ss5Lesson1LearnData;
                practiceData = Scijhs3s4ss5Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s4ss5Lesson1IndependentQuizData;
                quizData = Scijhs3s4ss5Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 4 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s4ss5Lesson2GetReadyData;
                learnData = Scijh3s4ss5Lesson2LearnData;
                practiceData = Scijhs3s4ss5Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s4ss5Lesson2IndependentQuizData;
                quizData = Scijhs3s4ss5Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 3 &&
                  ssIndex == 4 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s4ss5Lesson3GetReadyData;
                learnData = Scijh3s4ss5Lesson3LearnData;
                practiceData = Scijhs3s4ss5Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s4ss5Lesson3IndependentQuizData;
                quizData = Scijhs3s4ss5Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s5ss1Lesson1GetReadyData;
                learnData = Scijh3s5ss1Lesson1LearnData;
                practiceData = Scijhs3s5ss1Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s5ss1Lesson1IndependentQuizData;
                quizData = Scijhs3s5ss1Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s5ss1Lesson2GetReadyData;
                learnData = Scijh3s5ss1Lesson2LearnData;
                practiceData = Scijhs3s5ss1Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s5ss1Lesson2IndependentQuizData;
                quizData = Scijhs3s5ss1Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s5ss1Lesson3GetReadyData;
                learnData = Scijh3s5ss1Lesson3LearnData;
                practiceData = Scijhs3s5ss1Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s5ss1Lesson3IndependentQuizData;
                quizData = Scijhs3s5ss1Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SciJHS3s5ss1Lesson4GetReadyData;
                learnData = Scijh3s5ss1Lesson4LearnData;
                practiceData = Scijhs3s5ss1Lesson4PracticeData;
                independentPracticeData =
                    Scijhs3s5ss1Lesson4IndependentQuizData;
                quizData = Scijhs3s5ss1Lesson4QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 4) {
                getReadyData = SciJHS3s5ss1Lesson5GetReadyData;
                learnData = Scijh3s5ss1Lesson5LearnData;
                practiceData = Scijhs3s5ss1Lesson5PracticeData;
                independentPracticeData =
                    Scijhs3s5ss1Lesson5IndependentQuizData;
                quizData = Scijhs3s5ss1Lesson5QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 0 &&
                  lIndex == 5) {
                getReadyData = SciJHS3s5ss1Lesson6GetReadyData;
                learnData = Scijh3s5ss1Lesson6LearnData;
                practiceData = Scijhs3s5ss1Lesson6PracticeData;
                independentPracticeData =
                    Scijhs3s5ss1Lesson6IndependentQuizData;
                quizData = Scijhs3s5ss1Lesson6QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s5ss2Lesson1GetReadyData;
                learnData = Scijh3s5ss2Lesson1LearnData;
                practiceData = Scijhs3s5ss2Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s5ss2Lesson1IndependentQuizData;
                quizData = Scijhs3s5ss2Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s5ss2Lesson2GetReadyData;
                learnData = Scijh3s5ss2Lesson2LearnData;
                practiceData = Scijhs3s5ss2Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s5ss2Lesson2IndependentQuizData;
                quizData = Scijhs3s5ss2Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 1 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s5ss2Lesson3GetReadyData;
                learnData = Scijh3s5ss2Lesson3LearnData;
                practiceData = Scijhs3s5ss2Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s5ss2Lesson3IndependentQuizData;
                quizData = Scijhs3s5ss2Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s5ss3Lesson1GetReadyData;
                learnData = Scijh3s5ss3Lesson1LearnData;
                practiceData = Scijhs3s5ss3Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s5ss3Lesson1IndependentQuizData;
                quizData = Scijhs3s5ss3Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 2 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s5ss3Lesson2GetReadyData;
                learnData = Scijh3s5ss3Lesson2LearnData;
                practiceData = Scijhs3s5ss3Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s5ss3Lesson2IndependentQuizData;
                quizData = Scijhs3s5ss3Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 2 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s5ss3Lesson3GetReadyData;
                learnData = Scijh3s5ss3Lesson3LearnData;
                practiceData = Scijhs3s5ss3Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s5ss3Lesson3IndependentQuizData;
                quizData = Scijhs3s5ss3Lesson3QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 3 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s5ss4Lesson1GetReadyData;
                learnData = Scijh3s5ss4Lesson1LearnData;
                practiceData = Scijhs3s5ss4Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s5ss4Lesson1IndependentQuizData;
                quizData = Scijhs3s5ss4Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 3 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s5ss4Lesson2GetReadyData;
                learnData = Scijh3s5ss4Lesson2LearnData;
                practiceData = Scijhs3s5ss4Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s5ss4Lesson2IndependentQuizData;
                quizData = Scijhs3s5ss4Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 0) {
                getReadyData = SciJHS3s5ss5Lesson1GetReadyData;
                learnData = Scijh3s5ss5Lesson1LearnData;
                practiceData = Scijhs3s5ss5Lesson1PracticeData;
                independentPracticeData =
                    Scijhs3s5ss5Lesson1IndependentQuizData;
                quizData = Scijhs3s5ss5Lesson1QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 1) {
                getReadyData = SciJHS3s5ss5Lesson2GetReadyData;
                learnData = Scijh3s5ss5Lesson2LearnData;
                practiceData = Scijhs3s5ss5Lesson2PracticeData;
                independentPracticeData =
                    Scijhs3s5ss5Lesson2IndependentQuizData;
                quizData = Scijhs3s5ss5Lesson2QuizData;
              }
              if (grade == "JHS 3" &&
                  courseTitle == "Science" &&
                  sIndex == 4 &&
                  ssIndex == 4 &&
                  lIndex == 2) {
                getReadyData = SciJHS3s5ss5Lesson3GetReadyData;
                learnData = Scijh3s5ss5Lesson3LearnData;
                practiceData = Scijhs3s5ss5Lesson3PracticeData;
                independentPracticeData =
                    Scijhs3s5ss5Lesson3IndependentQuizData;
                quizData = Scijhs3s5ss5Lesson3QuizData;
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
              if (courseTitle == "Social Studies" &&
                  sIndex == 4 &&
                  ssIndex == 2 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s5ss3Lesson1GetReadyData;
                learnData = SSjhs1s5ss3Lesson1LearnData;
                practiceData = SSjhs1s5ss3Lesson1PracticeData;
                independentPracticeData = SSjhs1s5ss3Lesson1IndependentQuizData;
                quizData = SSjhs1s5ss3Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 0) {
                getReadyData = SSJHS1s6ss1Lesson1GetReadyData;
                learnData = SSjhs1s6ss1Lesson1LearnData;
                practiceData = SSjhs1s6ss1Lesson1PracticeData;
                independentPracticeData = SSjhs1s6ss1Lesson1IndependentQuizData;
                quizData = SSjhs1s6ss1Lesson1QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 1) {
                getReadyData = SSJHS1s6ss1Lesson2GetReadyData;
                learnData = SSjhs1s6ss1Lesson2LearnData;
                practiceData = SSjhs1s6ss1Lesson2PracticeData;
                independentPracticeData = SSjhs1s6ss1Lesson2IndependentQuizData;
                quizData = SSjhs1s6ss1Lesson2QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 2) {
                getReadyData = SSJHS1s6ss1Lesson3GetReadyData;
                learnData = SSjhs1s6ss1Lesson3LearnData;
                practiceData = SSjhs1s6ss1Lesson3PracticeData;
                independentPracticeData = SSjhs1s6ss1Lesson3IndependentQuizData;
                quizData = SSjhs1s6ss1Lesson3QuizData;
              }
              if (courseTitle == "Social Studies" &&
                  sIndex == 5 &&
                  ssIndex == 0 &&
                  lIndex == 3) {
                getReadyData = SSJHS1s6ss1Lesson4GetReadyData;
                learnData = SSjhs1s6ss1Lesson4LearnData;
                practiceData = SSjhs1s6ss1Lesson4PracticeData;
                independentPracticeData = SSjhs1s6ss1Lesson4IndependentQuizData;
                quizData = SSjhs1s6ss1Lesson4QuizData;
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
                  lIndex == 2) {
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
                  lIndex == 3) {
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
                isLocked: isStrandLocked,
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

    if (includeBece) {
      final bool isBeceLocked = !isGradeUnlocked(grade);
      List<SubStrand> beceSubStrands = [];

      for (int sIndex = 0; sIndex < generatedStrands.length; sIndex++) {
        final normalStrand = generatedStrands[sIndex];

        List<Lesson> beceLessonsForStrand = [];
        for (
          int ssIndex = 0;
          ssIndex < normalStrand.subStrands.length;
          ssIndex++
        ) {
          final normalSubStrand = normalStrand.subStrands[ssIndex];

          final String gradeClean = grade.replaceAll(' ', '');
          final int sNumber = sIndex + 1;
          final int ssNumber = ssIndex + 1;
          final String normalizedSubStrandTitle = normalSubStrand.subtitle
              .trim();

          // Subject name aliases
          final List<String> subjectAliases = [
            courseTitle.toLowerCase(),
            courseTitle.split(' ').first.toLowerCase(),
          ];

          // Grade+strand+substrand patterns: "JHS1 s1 ss1 -"
          // These are the REQUIRED format. The strand number prevents cross-strand leaks.
          final List<String> gradeStrandSsPatterns = [
            "${gradeClean.toLowerCase()} s$sNumber ss$ssNumber -",
            "${grade.toLowerCase()} s$sNumber ss$ssNumber -",
            "${gradeClean.toLowerCase()} s $sNumber ss$ssNumber -",
            "${grade.toLowerCase()} s $sNumber ss$ssNumber -",
            "${gradeClean.toLowerCase()} s$sNumber ss $ssNumber -",
            "${grade.toLowerCase()} s$sNumber ss $ssNumber -",
          ];

          // Build prefix list: ONLY subject-prefixed patterns.
          // Plain "jhs1 s1 ss1 -" intentionally excluded — it would match any subject's data.
          // Required key format: "[Subject] [Grade] s[N] ss[M] - [Name]"
          final List<String> candidatePrefixes = [
            for (final alias in subjectAliases)
              for (final gp in gradeStrandSsPatterns) "$alias $gp",
          ];

          // Exact match fallbacks using default sub-strand title
          final List<String> exactCandidates = [
            for (final alias in subjectAliases) ...[
              "$alias ${gradeClean.toLowerCase()} s$sNumber ss$ssNumber - $normalizedSubStrandTitle",
              "$alias ${grade.toLowerCase()} s$sNumber ss$ssNumber - $normalizedSubStrandTitle",
            ],
            "${gradeClean.toLowerCase()} s$sNumber ss$ssNumber - $normalizedSubStrandTitle",
            "${grade.toLowerCase()} s$sNumber ss$ssNumber - $normalizedSubStrandTitle",
          ].map((k) => k.trim().toLowerCase()).toList();

          QuizModel? matchedQuiz;
          String matchedQuizKey = "";
          for (var entry in beceQuizData.entries) {
            final String entryKeyLower = entry.key.trim().toLowerCase();
            bool matched = exactCandidates.contains(entryKeyLower);
            if (!matched) {
              for (var prefix in candidatePrefixes) {
                if (entryKeyLower.startsWith(prefix)) {
                  matched = true;
                  break;
                }
              }
            }
            if (matched) {
              matchedQuiz = entry.value;
              matchedQuizKey = entry.key;
              break;
            }
          }
          if (matchedQuiz == null) {
            matchedQuiz = QuizModel(audioPath: '', questions: []);
          }

          PracticeModel? matchedPractice;
          String matchedPracticeKey = "";
          for (var entry in becePracticeData.entries) {
            final String entryKeyLower = entry.key.trim().toLowerCase();
            bool matched = exactCandidates.contains(entryKeyLower);
            if (!matched) {
              for (var prefix in candidatePrefixes) {
                if (entryKeyLower.startsWith(prefix)) {
                  matched = true;
                  break;
                }
              }
            }
            if (matched) {
              matchedPractice = entry.value;
              matchedPracticeKey = entry.key;
              break;
            }
          }
          if (matchedPractice == null) {
            matchedPractice = PracticeModel(audioPath: '', questions: []);
          }

          // Extract display name: strip all prefix tokens, keep only the custom name after " - "
          String displaySubStrandName = normalSubStrand.subtitle;
          final String rawKey = matchedQuizKey.isNotEmpty
              ? matchedQuizKey
              : matchedPracticeKey;
          if (rawKey.isNotEmpty) {
            if (rawKey.contains(" - ")) {
              displaySubStrandName = rawKey.split(" - ").last.trim();
            }
          }

          if (matchedQuiz.questions.isNotEmpty ||
              matchedPractice.questions.isNotEmpty) {
            beceLessonsForStrand.add(
              Lesson(
                title: "Sub-strand $ssNumber",
                topic: displaySubStrandName,
                courseName: courseTitle,
                strandName: "BECE",
                subStrandName: normalStrand.title,
                lessonNumber: ssNumber.toString(),
                gradeName: grade,
                isLocked: isBeceLocked,
                getReady: defaultGetReadyData,
                learn: defaultLearnData,
                quiz: matchedQuiz,
                practice: matchedPractice,
                independentPractice: defaultIndependentQuizData,
              ),
            );
          }
        }

        if (beceLessonsForStrand.isNotEmpty) {
          beceSubStrands.add(
            SubStrand(
              title: normalStrand.title,
              subtitle: normalStrand.subtitle,
              lessons: beceLessonsForStrand,
            ),
          );
        }
      }

      generatedStrands.add(
        Strand(
          title: "BECE",
          subtitle: "Past Exam",
          isCompleted: false,
          isLocked: isBeceLocked,
          subStrands: beceSubStrands,
        ),
      );
    }

    return generatedStrands;
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
    if (index != -1) {
      selectedCourse.value = null; // Reset course if navigating away from home
    }
  }

  void selectCourse(Course course) {
    if (!isGradeUnlocked(selectedGrade.value)) {
      Get.snackbar(
        "Grade Locked",
        "${selectedGrade.value} content is locked for your grade level.",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
      return;
    }
    if (course.strands.isEmpty) {
      Get.snackbar(
        "Content Coming Soon",
        "${course.title} lessons will be available soon.",
        snackPosition: SnackPosition.TOP,
        backgroundColor: course.color,
        colorText: course.textColor,
        duration: const Duration(seconds: 2),
      );
      return;
    }
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
    final course = selectedCourse.value;
    if (course != null && index >= 0 && index < course.strands.length) {
      if (course.strands[index].isLocked ||
          !isGradeUnlocked(selectedGrade.value)) {
        Get.snackbar(
          "Grade Locked",
          "${selectedGrade.value} content is locked for your grade level.",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
          duration: const Duration(seconds: 2),
        );
        return;
      }
    }
    selectedStrandIndex.value = index;
    strandSearchController.clear();
    strandSearchText.value = "";
  }

  Future<void> clearData() async {
    globalProgressCache.clear();
    courses.clear();
    globalTotalCompletion.value = 0.0;
    globalSubjectProgress.clear();
    gradeTotalCompletion.updateAll((key, value) => 0.0);
    selectedCourse.value = null;
    selectedIndex.value = 0;

    // Regenerate blank structure accurately
    await refreshCourses();

    DPrint.log('SidebarController data cleared');
  }
}
