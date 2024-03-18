import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  static const routeName = '/stack';

  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: SizedBox(
        height: 400,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.redAccent,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.deepPurpleAccent,
                width: 300,
                height: 300,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.deepPurpleAccent,
                width: 150,
                height: 150,
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: Container(
                color: Colors.redAccent,
                width: 260,
                height: 260,
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              width: 125,
              height: 125,
            ),
          ],
        ),
      ),
    );
  }
}
