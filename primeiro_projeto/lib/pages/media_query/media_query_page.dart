// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  static const routeName = '/media_query';

  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Largura Tela ${mediaQuery.size.width}');
    print('Altura Tela ${mediaQuery.size.height}');
    print('Orientação ${mediaQuery.orientation}');
    print('Padding Top (Status bar) ${mediaQuery.padding.top}');
    print('Altura - AppBarDefault $kToolbarHeight');

    final middleHeightAppScreen =
        (mediaQuery.size.height - mediaQuery.padding.top - kToolbarHeight) * .5;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.purpleAccent,
              width: mediaQuery.size.width,
              height: middleHeightAppScreen,
            ),
            Container(
              color: Colors.deepPurpleAccent,
              width: mediaQuery.size.width * .05,
              height: middleHeightAppScreen,
            ),
          ],
        ),
      ),
    );
  }
}
