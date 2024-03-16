import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  static const routeName = '/scrolls/singlechildscrollview_page';

  const SinglechildscrollviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Child Scroll View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.redAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.purpleAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blueAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.cyanAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
