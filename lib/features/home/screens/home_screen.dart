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
