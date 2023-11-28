import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nossa primeira AppBar',
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_business_outlined),
          )
        ],
      ),
      drawer: const Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text('End drawer'),
        ),
      ),
      body: Column(
        children: [
          const Text(
            'Academia do Fluuter Custom Font',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Tourney',
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 32,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(150),
                  blurRadius: 30,
                  offset: const Offset(-2, -4),
                ),
                BoxShadow(
                  color: Colors.red.withAlpha(150),
                  blurRadius: 30,
                  offset: const Offset(2, 4),
                ),
              ],
            ),
            width: 200,
            height: 200,
          )
        ],
      ),
    );
  }
}
