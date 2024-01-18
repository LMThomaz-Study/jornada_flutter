// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  static const routeName = '/rows_columns';

  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns'),
      ),
      body: Container(
        width: 376,
        color: Colors.amberAccent,
        child: Column(
          // Alinhamento na vertical, ou seja, na direção principal do Widget (irá forçar a altura máxima disponível)
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Alinhamento na horizontal, ou seja, na direção secundária do Widget (não irá forçar o tamanho do widget)
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueAccent,
              child: const Text('Elemento 01'),
            ),
            const Text('Elemento 02'),
            const Text('Elemento 03'),
            Container(
              color: Colors.lightGreenAccent,
              child: Row(
                // Alinhamento na horizontal, ou seja, na direção principal do Widget (irá forçar a altura máxima disponível)
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // Alinhamento na vertical, ou seja, na direção secundária do Widget (não irá forçar o tamanho do widget)
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blueAccent,
                    child: const Text('Row-Text 1'),
                  ),
                  const Text('Row-Text 2'),
                  const Text('Row-Text 3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
