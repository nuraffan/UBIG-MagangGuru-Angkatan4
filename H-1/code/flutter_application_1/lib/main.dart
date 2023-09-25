import 'package:flutter/material.dart';
import 'package:flutter_application_1/tutor/homepage.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'page/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashScreen();
        } else {
          return GetMaterialApp(
            title: "App",
            debugShowCheckedModeBanner: false,
            home: HomePage(),
            //home: List(),
          );
        }
      },
    );
  }
}
