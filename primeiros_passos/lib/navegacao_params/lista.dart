import 'package:flutter/material.dart';
import 'package:primeiro_passos/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  static const routeName = '/navegacao_param';

  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     settings: const RouteSettings(
                //       name: Detalhe.routeName,
                //       arguments: {
                //         'id': 10,
                //       },
                //     ),
                //     builder: (context) => const Detalhe(),
                //   ),
                // );
                Navigator.of(context).pushNamed(
                  Detalhe.routeName,
                  arguments: {
                    'id': 18,
                  },
                );
              },
              child: const Text('Detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
