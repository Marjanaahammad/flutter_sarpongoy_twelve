import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/config/app_theme.dart';
import 'core/init/app_initializer.dart';
import 'features/splash/screens/splash_screen.dart';

void main() async {
  await AppInitializer.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Solace',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const SplashScreen(),
      // home: const Scaffold(
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(Icons.abc, size: 100),
      //         Text('Hello'),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
