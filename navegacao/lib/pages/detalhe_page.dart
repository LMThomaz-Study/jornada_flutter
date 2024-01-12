import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  static const routeName = '/detalhe';

  final String parametro;

  const DetalhePage({
    super.key,
    required this.parametro,
  });

  @override
  Widget build(BuildContext context) {
    // final param = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: Text(parametro),
      ),
    );
  }
}
