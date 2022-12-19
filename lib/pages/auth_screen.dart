import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  void onAuthPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorization'),
      ),
      body: Center(
        child: Column(
          children: const [],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: onAuthPressed,
        child: const Text('Continue'),
      ),
    );
  }
}
