import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/modules/auth/login/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.of(context).pushNamed(LoginPage.routeName),
          child: const Text('Login'),
        ),
      ),
    );
  }
}
