// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  static const routeName = '/layout_builder';

  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Center(child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.purpleAccent,
                width: constraints.maxWidth * .75,
                height: constraints.maxHeight * .5,
              ),
              Container(
                color: Colors.deepPurpleAccent,
                width: constraints.maxWidth,
                height: constraints.maxHeight * .5,
              ),
            ],
          );
        },
      )),
    );
  }
}
