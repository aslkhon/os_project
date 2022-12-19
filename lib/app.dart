import 'package:flutter/material.dart';
import 'package:os_project/pages/home_screen.dart';

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      themeMode: ThemeMode.dark,
      home: const HomeScreen(),
    );
  }
}
