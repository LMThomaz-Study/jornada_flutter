import 'dart:math';

import 'package:flutter/material.dart';

class ImcChangeNotifierController extends ChangeNotifier {
  double imc = 0.0;

  Future<void> calcIMC({
    required double peso,
    required double altura,
  }) async {
    imc = 0.0;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    imc = peso / pow(altura, 2);
    notifyListeners();
  }
}
