import 'package:flutter/material.dart';
import 'package:primeiro_passos/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static const String routeName = '/page2';

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 02'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page3',
                    ),
                    builder: (context) => const Page3(),
                  ),
                );
              },
              child: const Text('Página 03 - via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              },
              child: const Text('Página 03 - via NAMED'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Página 01 - via POP'),
            ),
          ],
        ),
      ),
    );
  }
}
