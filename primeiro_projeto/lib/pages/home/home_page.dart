import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
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
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed(RowsColumnsPage.routeName);
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed(MediaQueryPage.routeName);
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
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('Media Query'),
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
