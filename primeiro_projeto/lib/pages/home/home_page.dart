import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
import 'package:primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  buttonsRotationText,
  scrollsSingleChildScrollView,
  scrollsListView,
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
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed(LayoutBuilderPage.routeName);
                  break;
                case PopupMenuPages.buttonsRotationText:
                  Navigator.of(context)
                      .pushNamed(BotoesRotacaoTextoPage.routeName);
                  break;
                case PopupMenuPages.scrollsSingleChildScrollView:
                  Navigator.of(context)
                      .pushNamed(SinglechildscrollviewPage.routeName);
                  break;
                case PopupMenuPages.scrollsListView:
                  Navigator.of(context).pushNamed(ListviewPage.routeName);
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
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('Layout Builder'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.buttonsRotationText,
                  child: Text('Botões e Rotações de texto'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrollsSingleChildScrollView,
                  child: Text('Scrolls - Single Child Scroll View'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrollsListView,
                  child: Text('Scrolls - List View'),
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
