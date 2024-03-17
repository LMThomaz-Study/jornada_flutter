import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  static const routeName = '/snackbar';

  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackbar = SnackBar(
                  content: Text(
                    'Usuário salvo com sucesso',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  backgroundColor: Colors.greenAccent,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: const Text(
                    'Usuário salvo com sucesso',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  backgroundColor: Colors.greenAccent,
                  action: SnackBarAction(
                    label: 'Cancelar',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
