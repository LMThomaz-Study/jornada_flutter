import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sizeCircle = 64.0;
    const urlImage = 'https://github.com/LMThomaz.png';

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
          padding: const EdgeInsets.all(3),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'LMThomaz',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
