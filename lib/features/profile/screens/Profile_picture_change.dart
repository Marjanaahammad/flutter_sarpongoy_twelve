import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/controller/profile_controller.dart';
import 'package:get/get.dart';
import '../controller/profile_picture_controller.dart';

class ProfilePictureChange extends StatefulWidget {
  ProfilePictureChange({super.key});

  @override
  State<ProfilePictureChange> createState() => _ProfilePictureChangeState();
}

class _ProfilePictureChangeState extends State<ProfilePictureChange> {
  final ProfilePictureController controller = Get.put(
    ProfilePictureController(),
  );

  final ProfileController _profileController = Get.find<ProfileController>();

  submit() {
    _profileController.uploadPhoto(controller.selectedImage.value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: GestureDetector(
                onTap: controller.showImageSourceSheet,
                child: Stack(
                  children: [
                    Obx(
                      () => Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          image: controller.selectedImage.value != null
                              ? DecorationImage(
                                  image: FileImage(
                                    controller.selectedImage.value!,
                                  ),
                                  fit: BoxFit.contain,
                                )
                              : (_profileController.userInfo.value?.student
                                              .picture.url !=
                                          null &&
                                      _profileController.userInfo.value!.student
                                          .picture.url.isNotEmpty)
                                  ? DecorationImage(
                                      image: NetworkImage(
                                        _profileController.userInfo.value!
                                            .student.picture.url,
                                      ),
                                      fit: BoxFit.contain,
                                    )
                                  : null,
                        ),
                        child: (controller.selectedImage.value == null &&
                                (_profileController.userInfo.value?.student
                                            .picture.url ==
                                        null ||
                                    _profileController.userInfo.value!.student
                                        .picture.url.isEmpty))
                            ? Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Icon(
                                  Icons.person_outline_rounded,
                                  size: 100,
                                  color: Colors.black.withOpacity(.7),
                                ),
                              )
                            : null,
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300,
                          border: Border.all(color: Colors.grey),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 250,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  if (controller.selectedImage.value != null) {
                    print("Ready to upload");
                    submit();
                  }
                },
                child: const Text(
                  "Save",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
