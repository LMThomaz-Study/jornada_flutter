import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';

enum PopupMenuPages {
  container,
  rows_columns,
}

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            tooltip: 'Selecione um Item do menu',
            icon: const Icon(Icons.restaurant_menu),
            // initialValue: PopupMenuPages.container,
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed(ContainerPage.routeName);
                  break;
                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed(RowsColumnsPage.routeName);
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text('Rows & Columns'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}