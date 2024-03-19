import 'package:flutter/material.dart';
import 'package:resume_builder/Screens/academic_screen.dart';
import 'package:resume_builder/Screens/hobby_screen.dart';
import 'package:resume_builder/Screens/pdf_screen.dart';
import 'package:resume_builder/Screens/reference_screen.dart';
import 'package:resume_builder/Screens/resume_screen.dart';
import 'package:resume_builder/Screens/splash_screen.dart';
import 'package:resume_builder/Screens/work_exp.dart';

import 'Screens/home_screen.dart';
import 'Screens/per_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const HomeScreen(),
         'per_info': (context) => const PersonalInfo(),
         'academic': (context) => const AcademicScreen(),
         'work': (context) => const WorkExperience(),
         'ref': (context) => const ReferenceScreen(),
         'hobby': (context) => const HobbyScreen(),
         'cv': (context) => const PdfScreen(),
      },
    );
  }
}
