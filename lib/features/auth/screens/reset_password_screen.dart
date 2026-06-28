import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/controller/auth_controller.dart';
import 'package:get/get.dart';

import '../../../core/common/widgets/button_widgets.dart';
import '../../../core/extensions/input_decoration_extensions.dart';
import '../../../core/flutx_core/theme/gap.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({
    super.key,
    required this.label,
    required this.resetToken,
  });

  final String label;
  final String resetToken;

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  // final TextEditingController userIdTEController = TextEditingController();
  // final FocusNode userIdFocus = FocusNode();

  final TextEditingController newPasswordTEController = TextEditingController();
  final FocusNode newPasswordFocus = FocusNode();

  final TextEditingController confirmPasswordTEController =
      TextEditingController();

  final AuthController _authController = AuthController();
  final FocusNode confirmPasswordFocus = FocusNode();

  final ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    await _authController.resetPass(
      widget.resetToken,
      confirmPasswordTEController.text,
      newPasswordTEController.text,
      widget.label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/9bca85f6e3a12bfa0a6d41e8bac3ed3d65bda5e4.png',
                          width: 236,
                          height: 185,
                        ),
                      ),

                      //SizedBox(height: 30),
                      Text(
                        'Reset password',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 12),

                      // Container(
                      //   width: 565,
                      //   child: Text(
                      //     'Set New Password',
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.w400,
                      //       fontSize: 14,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      // ),

                      SizedBox(height: 16),

                      Container(
                        width: 565,
                        child: Text(
                          'New Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),

                      Container(
                        width: 565,
                        child: ValueListenableBuilder<bool>(
                          valueListenable: obscurePassword,
                          builder: (context, obscure, _) {
                            return TextFormField(
                              cursorColor: Colors.black,
                              controller: newPasswordTEController,
                              focusNode: newPasswordFocus,
                              obscureText: obscure,
                              textInputAction: TextInputAction.done,
                              //style: TextStyle(color: AppColors.primaryBlack),
                          decoration: context.primaryInputDecoration.copyWith(
                                    hintText: "Enter your Password",
                                    prefixIcon: Icon(
                                      Icons.lock_outlined,
                                      color: Color(0xFF000000),
                                    ),
                            hintStyle: TextStyle(color: Color(0xFF000000)),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        obscure
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined,
                                        color: Color(0xFF000000),
                                      ),
                              onPressed: () => obscurePassword.value = !obscure,
                                    ),
                                  ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password cannot be empty";
                                }
                                return null;
                              },
                              autofillHints: const [AutofillHints.password],
                              onFieldSubmitted: (_) => _submit(),
                            );
                          },
                        ),
                      ),

                  Gap.h12,

                      Container(
                        width: 565,
                        child: Text(
                          'Confirm Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),

                  Gap.h12,
                      Container(
                        width: 565,
                        child: ValueListenableBuilder<bool>(
                          valueListenable: obscurePassword,
                          builder: (context, obscure, _) {
                            return TextFormField(
                              cursorColor: Colors.black,
                              controller: confirmPasswordTEController,
                              focusNode: confirmPasswordFocus,
                              obscureText: obscure,
                              textInputAction: TextInputAction.done,
                              //style: TextStyle(color: AppColors.primaryBlack),
                          decoration: context.primaryInputDecoration.copyWith(
                                    hintText: "Enter your Password",
                                    prefixIcon: Icon(
                                      Icons.lock_outlined,
                                      color: Color(0xFF000000),
                                    ),
                            hintStyle: TextStyle(color: Color(0xFF000000)),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        obscure
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined,
                                        color: Color(0xFF000000),
                                      ),
                              onPressed: () => obscurePassword.value = !obscure,
                                    ),
                                  ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please confirm your password";
                                }
                                if (value != newPasswordTEController.text) {
                                  return "Passwords do not match";
                                }
                                return null;
                              },
                              autofillHints: const [AutofillHints.password],
                              onFieldSubmitted: (_) => _submit(),
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 16),

                      Container(
                        width: 565,
                        child: ValueListenableBuilder<TextEditingValue>(
                          valueListenable: newPasswordTEController,
                          builder: (context, value, _) {
                            final password = value.text;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flow the instruction',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16),
                                _buildRequirementItem(
                                  'Minimum Length 8 Characters',
                                  password.length >= 8,
                                ),
                                _buildRequirementItem(
                                  'At least 1 uppercase letter (A–Z)',
                                  password.contains(RegExp(r'[A-Z]')),
                                ),
                                _buildRequirementItem(
                                  'At least 1 lowercase letter (a–z)',
                                  password.contains(RegExp(r'[a-z]')),
                                ),
                                _buildRequirementItem(
                                  'At least 1 number (0–9)',
                                  password.contains(RegExp(r'[0-9]')),
                                ),
                                _buildRequirementItem(
                                  'At least 1 special character (!@#\$% )',
                                  password.contains(RegExp(r'[!@#\$%]')),
                                ),
                              ],
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 16),

                      /// [Text field] Password
                      SizedBox(height: 24),
                      Container(
                        width: 565,
                        child: PrimaryButton(
                          text: 'Continue',
                          backgroundColor: Color(0xFF0A4390),
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
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirementItem(String text, bool isChecked) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(
            isChecked ? Icons.check_circle : Icons.check_circle,
            color: isChecked ? Color(0xFF00A3FF) : Color(0xFFA0A0A0),
            size: 20,
          ),
          SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(text: text),
                  TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red.shade400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
