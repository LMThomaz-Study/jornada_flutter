import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoListUiConfig {
  static const Color _primaryColor = Color(0xFF5C77CE);
  static const Color _primaryColorLight = Color(0xFFABC8F7);

  TodoListUiConfig._();

  static get theme => ThemeData(
        textTheme: GoogleFonts.mandaliTextTheme(),
        primaryColor: _primaryColor,
        primaryColorLight: _primaryColorLight,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _primaryColor,
            foregroundColor: Colors.white,
          ),
        ),
      );
}
