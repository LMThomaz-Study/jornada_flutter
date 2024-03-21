import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget_exemple/model/user_model.dart';
import 'package:flutter_inherited_widget_exemple/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Leonardo Thomaz',
      avatar: 'https://github.com/LMThomaz.png',
      birthDate: '18/09/1999',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const SplashPage(),
        },
      ),
    );
  }
}
