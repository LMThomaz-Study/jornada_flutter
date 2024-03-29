import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:primeiro_projeto/pages/colors/colors_page.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:primeiro_projeto/pages/forms/forms_page.dart';
import 'package:primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:primeiro_projeto/pages/material_banner/material_banner_page.dart';
import 'package:primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
import 'package:primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page2.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  buttonsRotationText,
  scrollsSingleChildScrollView,
  scrollsListView,
  dialogs,
  snackbar,
  forms,
  cities,
  stack,
  stack2,
  bottomNavigatorBar,
  circleAvatar,
  colors,
  materialBanner,
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
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed(DialogsPage.routeName);
                  break;
                case PopupMenuPages.snackbar:
                  Navigator.of(context).pushNamed(SnackbarPage.routeName);
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed(FormsPage.routeName);
                  break;
                case PopupMenuPages.cities:
                  Navigator.of(context).pushNamed(CidadesPage.routeName);
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed(StackPage.routeName);
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed(StackPage2.routeName);
                  break;
                case PopupMenuPages.bottomNavigatorBar:
                  Navigator.of(context)
                      .pushNamed(BottomNavigatorBarPage.routeName);
                  break;
                case PopupMenuPages.circleAvatar:
                  Navigator.of(context).pushNamed(CircleAvatarPage.routeName);
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed(ColorsPage.routeName);
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed(MaterialBannerPage.routeName);
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
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbar,
                  child: Text('Snackbar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Formulários'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cities,
                  child: Text('Cidades'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('Stack Exemplo'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigatorBar,
                  child: Text('Bottom Navigator Bar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circleAvatar,
                  child: Text('Circle Avatar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text('Cores'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text('Material Banner'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.deepPurpleAccent,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.greenAccent,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Botão X'),
              ),
              const ContainerPrimary(),
              Container(
                width: 100,
                height: 100,
                color: Theme.of(context).primaryColor,
                child: const Text('Filho direto'),
              ),
              Builder(
                builder: (context) {
                  return Container(
                    width: 100,
                    height: 100,
                    color: Theme.of(context).primaryColor,
                    child: const Text('Builder Widget'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerPrimary extends StatelessWidget {
  const ContainerPrimary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Theme.of(context).primaryColor,
      child: const Text('Outro Widget'),
    );
  }
}
