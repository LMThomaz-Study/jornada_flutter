import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/database/sqlite_admin_connection.dart';
import 'package:todo_list_provider/app/core/ui/todo_list_ui_config.dart';
import 'package:todo_list_provider/app/modules/auth/auth_module.dart';
import 'package:todo_list_provider/app/modules/auth/login/login_page.dart';
import 'package:todo_list_provider/app/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdminConnection = SqliteAdminConnection();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(sqliteAdminConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdminConnection);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List Provider',
      initialRoute: LoginPage.routeName,
      debugShowCheckedModeBanner: false,
      theme: TodoListUiConfig.theme,
      routes: {
        ...AuthModule().routers,
      },
      home: const SplashPage(),
    );
  }
}
