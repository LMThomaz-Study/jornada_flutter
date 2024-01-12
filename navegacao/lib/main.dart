import 'package:flutter/material.dart';
import 'package:navegacao/pages/core/navigator_observer_custom.dart';
import 'package:navegacao/pages/detalhe_page.dart';
import 'package:navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      // Não irá chamar o onGenerateRoute, quando:
      // - quanto a rota estiver declarada no routes: {}
      // - quanto realizar navegação por PAGE
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == HomePage.routeName) {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const HomePage(),
          );
        }

        if (settings.name == DetalhePage.routeName) {
          String parametro =
              settings.arguments as String? ?? 'Não foi enviado o parâmetro';

          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(parametro: parametro),
          );
        }

        return null;
      },
      // routes: {
      //   HomePage.routeName: (_) => const HomePage(),
      //   DetalhePage.routeName: (_) => const DetalhePage(),
      // },
    );
  }
}
