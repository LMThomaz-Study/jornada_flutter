import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String avatar = 'https://github.com/LMThomaz.png';
  String birthDate = '01/01/2001';

  void alterarDados() {
    name = 'Leonardo Thomaz';
    birthDate = '18/08/1888';
    avatar = 'https://github.com/LMThomaz-Study.png';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Thomaz Study';
    notifyListeners();
  }
}
