import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:primeiro_projeto/pages/colors/colors_page.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:primeiro_projeto/pages/forms/forms_page.dart';
import 'package:primeiro_projeto/pages/home/home_page.dart';
import 'package:primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
import 'package:primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page2.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        primaryColorLight: Colors.red,
        primaryColorDark: Colors.purple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.redAccent,
          ),
        ),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        HomePage.routeName: (_) => const HomePage(),
        ContainerPage.routeName: (_) => const ContainerPage(),
        RowsColumnsPage.routeName: (_) => const RowsColumnsPage(),
        MediaQueryPage.routeName: (_) => const MediaQueryPage(),
        LayoutBuilderPage.routeName: (_) => const LayoutBuilderPage(),
        BotoesRotacaoTextoPage.routeName: (_) => const BotoesRotacaoTextoPage(),
        DialogsPage.routeName: (_) => const DialogsPage(),
        ListviewPage.routeName: (_) => const ListviewPage(),
        SinglechildscrollviewPage.routeName: (_) =>
            const SinglechildscrollviewPage(),
        SnackbarPage.routeName: (_) => const SnackbarPage(),
        FormsPage.routeName: (_) => const FormsPage(),
        CidadesPage.routeName: (_) => const CidadesPage(),
        StackPage.routeName: (_) => const StackPage(),
        StackPage2.routeName: (_) => const StackPage2(),
        BottomNavigatorBarPage.routeName: (_) => const BottomNavigatorBarPage(),
        CircleAvatarPage.routeName: (_) => const CircleAvatarPage(),
        ColorsPage.routeName: (_) => const ColorsPage(),
      },
    );
  }
}
