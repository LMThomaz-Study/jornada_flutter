import 'package:flutter/material.dart';
import 'package:primeiro_passos/navegacao/page1.dart';
import 'package:primeiro_passos/navegacao/page2.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 04'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page1',
                    ),
                    builder: (context) => const Page1(),
                  ),

                  // Irá remover as rotas até chegar na página com o name page2
                  ModalRoute.withName(
                    Page2.routeName,
                  ),

                  // Irá remover até chegar na primeira página
                  // (route) => route.isFirst,

                  // Irá remover TODAS as páginas
                  // (route) => false
                );
              },
              child: const Text('Página 01 - via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/page1',
                  ModalRoute.withName(
                    Page2.routeName,
                  ),
                );
              },
              child: const Text('Página 01 - via NAMED'),
            ),
          ],
        ),
      ),
    );
  }
}
