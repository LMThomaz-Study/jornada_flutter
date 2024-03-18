import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  static const routeName = '/stack2';

  const StackPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'http://m.gettywallpapers.com/wp-content/uploads/2020/09/New-York-Android-Wallpaper.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white38,
          ),
          Positioned(
            bottom: 48,
            left: 24,
            right: 24,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Nova York',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo. Entre seus pontos emblemáticos, destacam-se arranha-céus, como o Empire State Building, e o enorme Central Park. O teatro da Broadway fica em meio às luzes de neon da Times Square.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
