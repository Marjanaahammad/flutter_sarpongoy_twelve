import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/profile_controller.dart';

class HelpSupportScreen extends StatefulWidget {
  final VoidCallback onBack;
  const HelpSupportScreen({super.key, required this.onBack});

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  final _formKey = GlobalKey<FormState>();
  final TeacherProfileController _profileController =
      Get.put(TeacherProfileController());
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  late final Worker _profileWorker;

  @override
  void initState() {
    super.initState();
    _syncUserId();
    _profileWorker = ever(_profileController.userInfo, (_) => _syncUserId());
    if (_profileController.userInfo.value == null) {
      _profileController.fetchProfile();
    }
  }

  void _syncUserId() {
    final userId = _profileController.userInfo.value?.user?.userId;
    if ((userId ?? '').isNotEmpty && _userIdController.text != userId) {
      _userIdController.text = userId!;
    }
  }

  @override
  void dispose() {
    _profileWorker.dispose();
    _userIdController.dispose();
    _subjectController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final success = await _profileController.helpSupport(
      _subjectController.text.trim(),
      _descriptionController.text.trim(),
    );

    if (success && mounted) {
      _subjectController.clear();
      _descriptionController.clear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F5E1),
      body: Obx(
        () => Stack(
          children: [
            Column(
              children: [
                _buildTopBar(),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ── Header ──
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: widget.onBack,
                                icon: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xFF000000),
                                        width: 1.5),
                                  ),
                                  child: const Icon(Icons.arrow_back,
                                      size: 30, color: Color(0xFF000000)),
                                ),
                              ),
                              const Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Help and Support',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                    Text(
                                      'Get help anytime.',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 48), // Spacer
                            ],
                          ),
                          const SizedBox(height: 32),

                          // ── Form Fields ──
                          _buildLabel('User ID'),
                          const SizedBox(height: 8),
                          _buildTextField(
                            controller: _userIdController,
                            hintText: 'Enter your User ID',
                            readOnly: true,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                'assets/images/userId.png',
                                height: 11,
                                width: 12,
                              ),
                            ),
                            validator: (value) {
                              if ((value ?? '').trim().isEmpty) {
                                return 'User ID is loading. Please try again.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 24),

                          _buildLabel('Subject'),
                          const SizedBox(height: 8),
                          _buildTextField(
                            controller: _subjectController,
                            hintText: 'Problem Heading|',
                          
                            validator: (value) {
                              if ((value ?? '').trim().isEmpty) {
                                return 'Please enter a subject';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 24),

                          _buildLabel('Description'),
                          const SizedBox(height: 8),
                          _buildTextField(
                            controller: _descriptionController,
                            hintText: 'Description',
                            maxLines: 6,
                            maxLength: 300,
                            validator: (value) {
                              final text = (value ?? '').trim();
                              if (text.isEmpty) {
                                return 'Please enter a description';
                              }
                              if (text.length > 300) {
                                return 'At most 300 characters are allowed';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 46),

                          // ── Submit Button ──
                          Center(
                            child: Container(
                              width: 472,
                              height: 51,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF0FCE46),
                                    Color(0xFF006A2A)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: ElevatedButton(
                                onPressed: _profileController.isLoading.value
                                    ? null
                                    : _submit,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Text(
                                  'Save & Submit',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (_profileController.isLoading.value)
              Container(
                color: Colors.black.withOpacity(0.08),
                child: const Center(
                  child: CircularProgressIndicator(color: Color(0xFF0FCE46)),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFF0F0F0))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Obx(() {
            final user = _profileController.userInfo.value?.user;
            final teacher = _profileController.userInfo.value?.teacher;
            final imageUrl = teacher?.picture?.url;

            return Row(
              children: [
                Text(
                  user?.name ?? teacher?.name ?? 'Loading...',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF111111),
                  ),
                ),
                const SizedBox(width: 13),
                ClipOval(
                  child: (imageUrl ?? '').isNotEmpty
                      ? Image.network(
                          imageUrl!,
                          height: 44,
                          width: 44,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              _buildFallbackAvatar(),
                        )
                      : _buildFallbackAvatar(),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }

  Widget _buildFallbackAvatar() {
    return Container(
      height: 44,
      width: 44,
      decoration: const BoxDecoration(
        color: Color(0xFFE5E7EB),
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.person, size: 24, color: Color(0xFF6B7280)),
    );
  }

  Widget _buildLabel(String label) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF000000),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    Widget? prefixIcon,
    int maxLines = 1,
    int? maxLength,
    bool readOnly = false,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          maxLines: maxLines,
          maxLength: null, // Custom implementation for counter
          cursorColor: Colors.black,
          validator: validator,
          onChanged: (val) {
            if (maxLength != null) setState(() {});
          },
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFDADADA),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: prefixIcon,
            filled: true,
            fillColor: const Color(0xFFFFFFFF).withOpacity(0.5),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF000000)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF000000)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF00B023)),
            ),
          ),
          style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
        ),
        if (maxLength != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              '${controller.text.length}/$maxLength',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
      ],
    );
  }
}
