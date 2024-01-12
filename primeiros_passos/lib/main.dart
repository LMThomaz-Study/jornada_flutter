import 'package:flutter/material.dart';
import 'package:primeiro_passos/navegacao/home_page.dart';
import 'package:primeiro_passos/navegacao/page1.dart';
import 'package:primeiro_passos/navegacao/page2.dart';
import 'package:primeiro_passos/navegacao/page3.dart';
import 'package:primeiro_passos/navegacao/page4.dart';
// import 'package:primeiro_passos/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      routes: {
        '/': (_) => const HomePage(),
        '/page1': (_) => const Page1(),
        Page2.routeName: (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
      },
    );
  }
}
