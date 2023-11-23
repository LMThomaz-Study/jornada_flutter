import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  HomePageStateless({super.key});

  String text = 'Estou no StatelessWidget';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Column(
          children: [
            Text(text),
            TextButton(
              onPressed: () {
                text = 'Texto alterado';
              },
              child: const Text('Alterar Texto'),
            )
          ],
        ),
      ),
    );
  }
}
