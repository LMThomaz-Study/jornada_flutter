import 'package:flutter/material.dart';

class HomePageStatefull extends StatefulWidget {
  const HomePageStatefull({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageStatefullState();
  }
}

class _HomePageStatefullState extends State<HomePageStatefull> {
  String text = 'Estou no StatefulWidget';

  @override
  void initState() {
    super.initState();
    text = 'Texto alterado pelo initState';
  }

  @override
  Widget build(BuildContext context) {
    print('Buildando o HomePageStatefull');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Column(
          children: [
            Text(text),
            TextButton(
              onPressed: () {
                setState(() {
                  text = 'Texto alterado pelo onPressed';
                });
              },
              child: const Text('Alterar Texto'),
            )
          ],
        ),
      ),
    );
  }
}
