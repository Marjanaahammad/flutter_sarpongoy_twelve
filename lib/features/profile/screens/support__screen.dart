import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/common/widgets/button_widgets.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/controller/profile_controller.dart';

import 'package:get/get.dart';
import '../../../core/extensions/input_decoration_extensions.dart';
import '../../../core/flutx_core/theme/gap.dart';
import '../../../core/flutx_core/validation/validators.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userIdTEController = TextEditingController();
  final FocusNode userIdFocus = FocusNode();

  final TextEditingController subjectTEController = TextEditingController();
  final FocusNode subjectFocus = FocusNode();

  final TextEditingController descriptionTEController = TextEditingController();
  final FocusNode descriptionFocus = FocusNode();

  final ProfileController _profileController = Get.find<ProfileController>();

  int wordCount = 0;

  @override
  void initState() {
    super.initState();
    descriptionTEController.addListener(_updateWordCount);
    // Pre-fill User ID from ProfileController
    if (_profileController.userInfo.value?.student != null) {
      userIdTEController.text =
          _profileController.userInfo.value!.student.userId;
    }
  }

  @override
  void dispose() {
    userIdTEController.dispose();
    userIdFocus.dispose();
    subjectTEController.dispose();
    subjectFocus.dispose();
    descriptionTEController.dispose();
    descriptionFocus.dispose();
    super.dispose();
  }

  void _updateWordCount() {
    final text = descriptionTEController.text.trim();
    if (text.isEmpty) {
      if (mounted) {
        setState(() {
          wordCount = 0;
        });
      }
      return;
    }

    final words = text.split(RegExp(r'\s+'));
    if (words.length > 300) {
      // Truncate to 300 words
      final truncatedText = words.sublist(0, 300).join(' ');
      descriptionTEController.text = truncatedText;
      descriptionTEController.selection = TextSelection.fromPosition(
        TextPosition(offset: descriptionTEController.text.length),
      );

      // Show snackbar
      Get.snackbar(
        "Word Limit Exceeded",
        "At most 300 words are allowed.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 2),
      );
    }

    if (mounted) {
      setState(() {
        wordCount = descriptionTEController.text.trim().isEmpty
            ? 0
            : descriptionTEController.text.trim().split(RegExp(r'\s+')).length;
      });
    }
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    await _profileController.helpSupport(
      subjectTEController.text,
      descriptionTEController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                        right: 70,
                        top: 30,
                        bottom: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => Get.back(),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Help and Support",
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      "Get help anytime.",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Align(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'User ID',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),

                          /// [Text Field] User ID (ReadOnly or derived from Profile)
                          TextFormField(
                            controller: userIdTEController,
                            readOnly: true,
                            cursorColor: Colors.black,
                            focusNode: userIdFocus,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(fontSize: 16),
                            decoration: context.primaryInputDecoration.copyWith(
                              hintText: "Enter your User ID",
                              prefixIcon: const Icon(
                                Icons.person_2_outlined,
                                color: Color(0xFF000000),
                              ),
                              hintStyle: const TextStyle(
                                color: Color(0xFF000000),
                              ),
                            ),
                            onFieldSubmitted: (_) => FocusScope.of(
                              context,
                            ).requestFocus(subjectFocus),
                            autofillHints: const [AutofillHints.email],
                          ),

                          Gap.h12,
                          Align(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Subject',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),

                          /// [Text Field] Subject
                          TextFormField(
                            controller: subjectTEController,
                            cursorColor: Colors.black,
                            focusNode: subjectFocus,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(fontSize: 16),
                            decoration: context.primaryInputDecoration.copyWith(
                              hintText: "Enter your subject name",
                              hintStyle: const TextStyle(
                                color: Color(0xFF000000),
                              ),
                            ),
                            validator: Validators.name,
                            onFieldSubmitted: (_) => FocusScope.of(
                              context,
                            ).requestFocus(descriptionFocus),
                          ),

                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Description',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),

                          /// [Text Field] Description
                          TextFormField(
                            controller: descriptionTEController,
                            cursorColor: Colors.black,
                            focusNode: descriptionFocus,
                            maxLines: 3,
                            keyboardType: TextInputType.multiline,
                            textInputAction: TextInputAction.newline,
                            style: const TextStyle(fontSize: 16),
                            decoration: context.primaryInputDecoration.copyWith(
                              hintText: "Describe your concern",
                              hintStyle: const TextStyle(
                                color: Color(0xFF000000),
                              ),
                              counter: Text(
                                "limit $wordCount/300",
                                style: TextStyle(
                                  color: wordCount > 300
                                      ? Colors.red
                                      : Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a description";
                              }
                              final words = value.trim().split(RegExp(r'\s+'));
                              if (words.length > 300) {
                                return "At most 300 words allowed";
                              }
                              return null;
                            },
                          ),

                          const SizedBox(height: 24),
                          SizedBox(
                            width: 565,
                            child: PrimaryButton(
                              text: 'Save & Submit',
                              backgroundColor: const Color(0xFF0A4390),
                              onSimplePressed: () {
                                _submit();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (_profileController.isLoading.value)
              const Center(child: CircularProgressIndicator()),
          ],
        );
      }),
    );
  }
}
