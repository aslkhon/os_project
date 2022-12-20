import 'package:flutter/material.dart';
import 'package:os_project/screens/auth_screen.dart';
import 'package:os_project/screens/home_screen.dart';

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: HomeScreen.routeName,
      routes: {
        AuthScreen.routeName: (context) => const AuthScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
