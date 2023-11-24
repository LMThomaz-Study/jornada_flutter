// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:primeiro_passos/ciclo_de_vida/home_page.dart';

class HomePageStatefull extends StatefulWidget {
  const HomePageStatefull({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageStatefullState();
  }
}

class _HomePageStatefullState extends State<HomePageStatefull> {
  String text = 'Estou no StatefulWidget';

  _HomePageStatefullState() {
    print('_HomePageStatefullState');
  }

  @override
  void initState() {
    super.initState();
    text = 'Texto alterado pelo initState';
    print('initState');

    // Será executado após a tela ser buildada
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePageStateless()));
    });
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
