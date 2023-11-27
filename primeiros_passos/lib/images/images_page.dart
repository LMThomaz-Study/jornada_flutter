import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/paisagem.jpg',
                  ),
                  fit: BoxFit.cover,
                  opacity: .5,
                ),
              ),
              child: Center(
                child: Text(
                  'Paisagem',
                  style: TextStyle(
                    fontSize: 32,
                    backgroundColor: Colors.white.withOpacity(.6),
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.network(
                'https://www.zup.com.br/wp-content/uploads/2021/03/5ce2fde702ef93c1e994d987_flutter.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
