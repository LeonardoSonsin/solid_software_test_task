import 'package:flutter/material.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen.dart';
import 'package:solid_software_test_task/theme/my_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid Software Test Task',
      theme: myTheme,
      home: const HomeScreen(),
    );
  }
}
