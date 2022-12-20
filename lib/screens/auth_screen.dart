import 'package:flutter/material.dart';
import 'package:os_project/screens/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static const routeName = '/auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  String? _loginError;
  String? _passwordError;

  void onAuthPressed() {
    if (!isValid()) return;

    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  bool isValid() {
    if (_loginController.text.isEmpty) {
      _loginError = 'Professor ID can\'t be empty';
    }
    if (_passwordController.text.isEmpty) {
      _passwordError = 'Password can\'t be empty';
    }
    setState(() {});

    return _loginController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorization'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Professor ID',
                border: const OutlineInputBorder(),
                errorText: _loginError,
              ),
              controller: _loginController,
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                errorText: _passwordError,
              ),
              controller: _passwordController,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: onAuthPressed,
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
