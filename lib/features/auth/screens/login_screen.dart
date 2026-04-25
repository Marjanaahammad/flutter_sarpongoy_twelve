import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/common/widgets/button_widgets.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/controller/auth_controller.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/screens/security_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/extensions/input_decoration_extensions.dart';
import '../../../core/flutx_core/theme/gap.dart';
import '../../../core/services/secure_store_services.dart';
import '../controller/rememberme_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    required this.label,
    this.password,
    this.userId,
  });

  final String? password;
  final String? userId;

  final String label;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userIdTEController = TextEditingController();
  final FocusNode userIdFocus = FocusNode();

  final TextEditingController passwordTEController = TextEditingController();
  final FocusNode passwordFocus = FocusNode();

  final ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);

  final rememberMeController = Get.put(RememberMeController());
  final AuthController _authController = Get.find<AuthController>();

  @override
  void initState() {
    super.initState();
    userIdTEController.text = widget.userId ?? '';
    passwordTEController.text = widget.password ?? '';

    if ((widget.userId == null || widget.userId!.isEmpty) &&
        (widget.password == null || widget.password!.isEmpty)) {
      _loadRememberedCredentials();
    }
  }

  Future<void> _loadRememberedCredentials() async {
    final secureStore = SecureStoreServices();
    final savedUserId =
        await secureStore.retrieveData('${widget.label}_userId');
    final savedPassword =
        await secureStore.retrieveData('${widget.label}_password');

    if (savedUserId != null &&
        savedUserId.isNotEmpty &&
        savedPassword != null &&
        savedPassword.isNotEmpty) {
      if (mounted) {
        setState(() {
          userIdTEController.text = savedUserId;
          passwordTEController.text = savedPassword;
          rememberMeController.rememberMe.value = true;
        });
      }
    }
  }

  @override
  void dispose() {
    userIdTEController.dispose();
    userIdFocus.dispose();
    passwordTEController.dispose();
    passwordFocus.dispose();
    obscurePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _submit() async {
      if (!_formKey.currentState!.validate()) return;
      _authController.login(
        rememberMeController,
        userId: userIdTEController.text,
        password: passwordTEController.text,
        label: widget.label,
      );
    }

    return Scaffold(
      body: Padding(
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
                    'As a ${widget.label}',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: 565,
                    child: Text(
                      'User ID',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),

                  /// [Text Field] Email
                  Container(
                    width: 565,
                    child: TextFormField(
                      controller: userIdTEController,
                      cursorColor: Colors.black,
                      focusNode: userIdFocus,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 16,
                        //color: AppColors.primaryBlack,
                      ),
                      decoration: context.primaryInputDecoration.copyWith(
                        hintText: "Enter your User ID",
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          color: Color(0xFF000000),
                        ),
                        hintStyle: TextStyle(color: Color(0xFF000000)),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'User ID is required';
                        }

                        final regex = RegExp(r'^[a-zA-Z0-9_]+$');

                        if (!regex.hasMatch(value.trim())) {
                          return 'Only letters, numbers and underscore are allowed';
                        }

                        return null;
                      },
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).requestFocus(userIdFocus),
                      autofillHints: const [AutofillHints.email],
                    ),
                  ),

                  Gap.h12,

                  Container(
                    width: 565,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Gap.h12,

                  /// [Text field] Password
                  Container(
                    width: 565,
                    child: ValueListenableBuilder<bool>(
                      valueListenable: obscurePassword,
                      builder: (context, obscure, _) {
                        return TextFormField(
                          cursorColor: Colors.black,
                          controller: passwordTEController,
                          focusNode: passwordFocus,
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

                          // validator: Validators.password,
                          autofillHints: const [AutofillHints.password],
                          onFieldSubmitted: (_) => _submit(),
                        );
                      },
                    ),
                  ),

                  Container(
                    width: 565,
                    child: Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: rememberMeController.rememberMe.value,
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                            //  tick color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            side: WidgetStateBorderSide.resolveWith((states) {
                              if (states.contains(WidgetState.selected)) {
                                //  Border when checked
                                return BorderSide(
                                  color: Color(0xFF000000),
                                  width: 2,
                                );
                              }
                              // Border when unchecked
                              return BorderSide(
                                color: Color(0xFF000000),
                                width: 1,
                              );
                            }),
                            onChanged: (_) =>
                                rememberMeController.toggleRememberMe(),
                          ),
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () async {
                            final userId = userIdTEController.text.trim();
                            if (userId.isEmpty) {
                              Get.snackbar(
                                "Error",
                                "Please enter your User ID first",
                                backgroundColor: Colors.red.withOpacity(0.8),
                                colorText: Colors.white,
                              );
                              return;
                            }
                            await _authController.saveUserIdToStorage(userId);
                            Get.to(() => SecurityScreen(label: widget.label));
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Color(0xFF00204B),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),
                  Container(
                    width: 565,
                    child: PrimaryButton(
                      text: 'Login',
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
    );
  }
}
