import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  static const routeName = '/colors';

  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const color = Colors.lightBlueAccent;
    // final color = Colors.blue.withOpacity(0.5);
    // const color = Color.fromRGBO(127, 128, 198, 1);
    final color = const Color(0xFF2DE34D).withOpacity(0.5);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: color,
        ),
      ),
    );
  }
}
