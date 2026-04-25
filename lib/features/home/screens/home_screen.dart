import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

import '../../profile/screens/profile_screen.dart';
import '../widgets/subject_grid_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: searchController,
                          cursorColor: const Color(0xFF6B6B6B),
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search_rounded,
                              color: Color(0xFF6B6B6B),
                            ),
                            hintText: "Search here...",
                            hintStyle: const TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: const BorderSide(
                                color: Color(0xFFDDDDDD),
                                width: 1.5,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: const BorderSide(
                                color: Color(0xFFDDDDDD),
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: const BorderSide(
                                color: Color(0xFFDDDDDD),
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 12),

                      GetBuilder<ProfileController>(
                        init: Get.find<ProfileController>(),
                        builder: (controller) {
                          return Obx(() {
                            final student = controller.userInfo.value?.student;
                            return GestureDetector(
                              onTap: () {
                                Get.to(() => const ProfileScreen());
                              },
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.grey.shade200,
                                  ),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: student?.picture.url != null &&
                                        student!.picture.url.isNotEmpty
                                    ? Image.network(
                                        student.picture.url,
                                        fit: BoxFit.contain,
                                        errorBuilder: (
                                          context,
                                          error,
                                          stackTrace,
                                        ) =>
                                            Icon(Icons.person_outline_rounded),
                                      )
                                    : Icon(Icons.person_outline_rounded),
                              ),
                            );
                          });
                        },
                      ),

                      // const SizedBox(width: 12),
                      //
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Image.asset(
                      //     'assets/images/mingcute_notification-fill.png',
                      //     width: 30,
                      //     height: 30,
                      //   ),
                      // ),
                    ],
                  ),
                ),

                SizedBox(height: 24),
                Text(
                  'Subjects',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFFA53A00),
                  ),
                ),
                SizedBox(height: 24),

                // Subject Cards Grid
                SubjectGridScreen(),

                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//   Widget _buildSubjectGrid() {
//     final subjects = [
//       {
//         'name': 'English',
//         'image': 'assets/images/Group.png',
//         'color': const Color(0xFFFFE9EE),
//         'textColor': const Color(0xFFFF2B55),
//       },
//       {
//         'name': 'Science',
//         'image': 'assets/images/science_home.png',
//         'color': const Color(0xFFFAF2FF),
//         'textColor': const Color(0xFF8A3ED6),
//       },
//       {
//         'name': 'Math',
//         'image': 'assets/images/math_home.png',
//         'color': const Color(0xFFF2FAFF),
//         'textColor': const Color(0xFF006AC1),
//       },
//       {
//         'name': 'Social Studies',
//         'image': 'assets/images/world_13717883 1.png',
//         'color': const Color(0xFFFFF1DC),
//         'textColor': const Color(0xFFFF7811),
//       },
//       {
//         'name': 'Religious & Moral\nEducation',
//         'image': 'assets/images/al-quran_16652601 1.png',
//         'color': const Color(0xFFFFFCEB),
//         'textColor': const Color(0xFFA69900),
//       },
//     ];
//
//     final rows = <Widget>[];
//     for (int i = 0; i < subjects.length; i += 2) {
//       final isLast = i + 1 >= subjects.length;
//       rows.add(
//         Row(
//           children: [
//             Expanded(
//               child: _buildSubjectCard(
//                 subjects[i]['name'] as String,
//                 subjects[i]['image'] as String,
//                 subjects[i]['color'] as Color,
//                 subjects[i]['textColor'] as Color,
//               ),
//             ),
//             const SizedBox(width: 16),
//             isLast
//                 ? const Expanded(child: SizedBox())
//                 : Expanded(
//                     child: _buildSubjectCard(
//                       subjects[i + 1]['name'] as String,
//                       subjects[i + 1]['image'] as String,
//                       subjects[i + 1]['color'] as Color,
//                       subjects[i + 1]['textColor'] as Color,
//                     ),
//                   ),
//           ],
//         ),
//       );
//       if (i + 2 < subjects.length) rows.add(const SizedBox(height: 16));
//     }
//     return Column(children: rows);
//   }
//
//   Widget _buildSubjectCard(
//     String name,
//     String image,
//     Color bgColor,
//     Color textColor,
//   ) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
//       decoration: BoxDecoration(
//         color: bgColor,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(image, height: 124, width: 124, fit: BoxFit.contain),
//           const SizedBox(height: 10),
//           Text(
//             name,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//               color: textColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
