import 'package:flutter/material.dart';
import 'package:primeiro_passos/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
                      name: 'page2',
                    ),
                    builder: (context) => const Page2(),
                  ),
                );
              },
              child: const Text('Página 02 - via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: const Text('Página 02 - via NAMED'),
            ),
          ],
        ),
      ),
    );
  }
}
