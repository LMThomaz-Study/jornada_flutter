import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Leonardo Thomaz',
                    // style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    '18/09/1999',
                    // style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
