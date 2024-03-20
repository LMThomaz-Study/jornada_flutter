import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/setState/imc_setstate_page.dart';
import 'package:flutter_default_state_manager/value_notifier/imc_value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

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
                _goToPage(context, const ImcSetstatePage());
              },
              child: const Text('setState'),
            ),
            ElevatedButton(
              onPressed: () {
                _goToPage(context, const ImcValueNotifierPage());
              },
              child: const Text('valueNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('changeNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('streams (Bloc Pattern)'),
            ),
          ],
        ),
      ),
    );
  }
}
