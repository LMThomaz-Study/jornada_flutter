import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  static const routeName = '/circleAvatar';

  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: const Column(
        children: [
          // SizedBox(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage('https://github.com/LMThomaz.png'),
          //   ),
          // ),
          ImageAvatar(urlImage: 'https://github.com/LMThomaz.png')
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sizeCircle = 120.0;

    return Stack(
      children: [
        Container(
          height: sizeCircle,
          width: sizeCircle,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.redAccent,
              ],
              begin: Alignment.topRight,
            ),
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(sizeCircle),
          ),
        ),
        Container(
          height: sizeCircle,
          width: sizeCircle,
          padding: const EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        SizedBox(
          height: sizeCircle,
          width: sizeCircle,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.redAccent,
                  ],
                ),
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'AO VIVO',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
