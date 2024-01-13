import 'package:flutter/material.dart';
import 'package:navegacao/pages/detalhe2_page.dart';
import 'package:navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  DetalhePage.routeName,
                  arguments: 'Parâmetro pelo NAMED',
                );
              },
              child: const Text('Ir para Detalhes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: DetalhePage.routeName,
                      // arguments: 'Parâmetro pelo PAGE_ROUTE',
                    ),
                    builder: (_) => const DetalhePage(
                      parametro: 'Parâmetro pelo PAGE_ROUTE',
                    ),
                  ),
                );
              },
              child: const Text('Ir para Detalhes'),
            ),
            TextButton(
              onPressed: () async {
                final message = await Navigator.of(context)
                    .pushNamed(Detalhe2Page.routeName);
                print('Mensagem recebida da página: $message');
              },
              child: const Text('Ir para Detalhes 2 e aguardar'),
            ),
          ],
        ),
      ),
    );
  }
}
