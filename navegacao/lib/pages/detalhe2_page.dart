import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {
  static const routeName = '/detalhe2';

  const Detalhe2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe 2'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop('Parâmetro retornado pela tela $routeName');
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}
