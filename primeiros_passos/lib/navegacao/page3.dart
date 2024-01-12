import 'package:flutter/material.dart';
import 'package:primeiro_passos/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 03'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page4',
                    ),
                    builder: (context) => const Page4(),
                  ),
                );
              },
              child: const Text('Página 04 - via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page4');
              },
              child: const Text('Página 04 - via NAMED'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Página 02 - via POP'),
            ),
          ],
        ),
      ),
    );
  }
}
