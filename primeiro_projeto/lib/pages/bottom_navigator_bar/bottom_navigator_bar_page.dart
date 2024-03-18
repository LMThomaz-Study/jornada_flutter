import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  static const routeName = '/bottomNavigatorBar';

  const BottomNavigatorBarPage({super.key});

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        currentIndex: indexPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Página 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.baby_changing_station_outlined),
            label: 'Página 2',
          ),
        ],
      ),
      body: IndexedStack(
        index: indexPage,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
