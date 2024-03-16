import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  static const routeName = '/botoes_rotacao_texto';

  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text(
                      'Leonardo Thomaz',
                    ),
                  ),
                ),
                const Icon(Icons.access_alarm_outlined),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: const EdgeInsets.all(10),
                minimumSize: const Size(50, 30),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.radio_button_checked),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                shadowColor: Colors.red,
                minimumSize: const Size(120, 42),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.airline_seat_flat),
              label: const Text('A mimir'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.red),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Size(175, 42);
                    } else if (states.contains(MaterialState.hovered)) {
                      return const Size(160, 42);
                    }

                    return const Size(150, 48);
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.yellow;
                    }

                    return Colors.red;
                  },
                ),
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: const Text('Ink Well'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: const Text('Gesture Detector'),
              onVerticalDragStart: (_) {},
            )
          ],
        ),
      ),
    );
  }
}
