import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/common/widgets/button_widgets.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/controller/auth_controller.dart';
import 'package:get/get.dart';

import '../../../core/extensions/input_decoration_extensions.dart';
import '../../../core/flutx_core/theme/gap.dart';
import '../../../core/flutx_core/validation/validators.dart';
import '../controller/security_check_controller.dart';
import '../model/request/security_question_request_model.dart';

class SecurityCheckScreen extends StatefulWidget {
  const SecurityCheckScreen({super.key});

  @override
  State<SecurityCheckScreen> createState() => _SecurityCheckScreenState();
}

class _SecurityCheckScreenState extends State<SecurityCheckScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController favoriteTeacherTEController =
        TextEditingController();
    final TextEditingController favoriteSubjectTEController =
        TextEditingController();
    final TextEditingController maidenNameTEController =
        TextEditingController();
    final TextEditingController petNameTEController = TextEditingController();
    final TextEditingController favoriteFoodTEController =
        TextEditingController();

    final FocusNode favoriteTeacherFocus = FocusNode();
    final FocusNode favoriteSubjectFocus = FocusNode();
    final FocusNode maidenNameFocus = FocusNode();
    final FocusNode petNameFocus = FocusNode();
    final FocusNode favoriteFoodFocus = FocusNode();

    final TextEditingController passwordTEController = TextEditingController();
    final FocusNode passwordFocus = FocusNode();

    final ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);

    final AuthController _authController = Get.find<AuthController>();

    Future<void> _submit() async {
      if (!_formKey.currentState!.validate()) return;

      final questions = [
        SecurityQuestion(
          question: "What is the name of your favourite teacher?",
          answer: favoriteTeacherTEController.text.trim(),
        ),
        SecurityQuestion(
          question: "What is your favourite subject?",
          answer: favoriteSubjectTEController.text.trim(),
        ),
        SecurityQuestion(
          question: "What is your mother's maiden name?",
          answer: maidenNameTEController.text.trim(),
        ),
        SecurityQuestion(
          question: "What is your favourite pet's name?",
          answer: petNameTEController.text.trim(),
        ),
        SecurityQuestion(
          question: "What is your favourite food?",
          answer: favoriteFoodTEController.text.trim(),
        ),
      ];
      await _authController.securityAnswerStore(questions);
    }

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
                  SizedBox(height: 30),
                  Center(
                        child: Text(
                          'Security Check',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Colors.black,
                          ),
                        ),
                      ),

                  SizedBox(height: 16),

                  Container(
                        width: 565,
                    child: Text(
                          'Please answer the following Security Question',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                  SizedBox(height: 52),

                  Container(
                        width: 565,
                    child: Text(
                          'What is The Name of your favourite Teacher',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                  SizedBox(height: 12),

                      /// [Text Field] Email
                  Container(
                        width: 565,
                        child: TextFormField(
                          controller: favoriteTeacherTEController,
                          cursorColor: Colors.black,
                          focusNode: favoriteTeacherFocus,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(
                            fontSize: 16,
                            //color: AppColors.primaryBlack,
                          ),
                          decoration: context.primaryInputDecoration.copyWith(
                            hintText: "My favourite teacher is...",
                        hintStyle: TextStyle(
                              color: Color(0xFF4F4F4F),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                          validator: Validators.name,
                      onFieldSubmitted: (_) => FocusScope.of(
                                context,
                              ).requestFocus(favoriteTeacherFocus),
                          autofillHints: const [AutofillHints.email],
                        ),
                      ),
                      Gap.h12,

                  Container(
                        width: 565,
                    child: Text(
                          'What is your favourite Subject',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Gap.h12,

                  Container(
                        width: 565,
                        child: TextFormField(
                          controller: favoriteSubjectTEController,
                          cursorColor: Colors.black,
                          focusNode: favoriteSubjectFocus,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(
                            fontSize: 16,
                            //color: AppColors.primaryBlack,
                          ),
                          decoration: context.primaryInputDecoration.copyWith(
                            hintText: "My favourite subject is...",
                        hintStyle: TextStyle(
                              color: Color(0xFF4F4F4F),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                          validator: Validators.name,
                      onFieldSubmitted: (_) => FocusScope.of(
                                context,
                              ).requestFocus(favoriteSubjectFocus),
                        ),
                      ),

                  SizedBox(height: 12),

                  Container(
                        width: 565,
                    child: Text(
                          'What is your Mother’s Maiden Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Gap.h12,

                      /// [Text Field] Email
                  Container(
                        width: 565,
                        child: TextFormField(
                          controller: maidenNameTEController,
                          cursorColor: Colors.black,
                          focusNode: maidenNameFocus,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(
                            fontSize: 16,
                            //color: AppColors.primaryBlack,
                          ),
                          decoration: context.primaryInputDecoration.copyWith(
                            hintText: "My mother’s maiden name is...",
                        hintStyle: TextStyle(
                              color: Color(0xFF4F4F4F),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                          validator: Validators.name,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).requestFocus(maidenNameFocus),
                          autofillHints: const [AutofillHints.name],
                        ),
                      ),
                      Gap.h12,

                  Container(
                        width: 565,
                    child: Text(
                          'What is your favourite Pet’s Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Gap.h12,

                      /// [Text Field] Email
                  Container(
                        width: 565,
                        child: TextFormField(
                          controller: petNameTEController,
                          cursorColor: Colors.black,
                          focusNode: petNameFocus,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(
                            fontSize: 16,
                            //color: AppColors.primaryBlack,
                          ),
                          decoration: context.primaryInputDecoration.copyWith(
                            hintText: "My favourite pet’s name is...",
                        hintStyle: TextStyle(
                              color: Color(0xFF4F4F4F),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                          validator: Validators.name,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).requestFocus(petNameFocus),
                          autofillHints: const [AutofillHints.name],
                        ),
                      ),

                      Gap.h12,

                  Container(
                        width: 565,
                    child: Text(
                          'What is your favourite food',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Gap.h12,

                      /// [Text Field] Email
                  Container(
                        width: 565,
                        child: TextFormField(
                          controller: favoriteFoodTEController,
                          cursorColor: Colors.black,
                          focusNode: favoriteFoodFocus,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(
                            fontSize: 16,
                            //color: AppColors.primaryBlack,
                          ),
                          decoration: context.primaryInputDecoration.copyWith(
                            hintText: "My favourite food is ",
                        hintStyle: TextStyle(
                              color: Color(0xFF4F4F4F),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                          validator: Validators.name,
                      onFieldSubmitted: (_) => FocusScope.of(
                                context,
                              ).requestFocus(favoriteFoodFocus),
                          autofillHints: const [AutofillHints.name],
                        ),
                      ),

                  SizedBox(height: 24),
                  Container(
                        width: 565,
                        child: PrimaryButton(
                          onSimplePressed: _submit,
                          text: 'Submit',
                          backgroundColor: const Color(0xFF0A4390),
                          textColor: Colors.white,
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
}
