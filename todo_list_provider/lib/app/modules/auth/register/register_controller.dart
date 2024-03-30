import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/exception/auth_exception.dart';
import 'package:todo_list_provider/app/services/user/user_service.dart';

class RegisterController extends ChangeNotifier {
  final UserService _userService;

  String? error;
  bool success = false;

  RegisterController({
    required UserService userService,
  }) : _userService = userService;

  Future<void> registerUser(String email, String password) async {
    _preRequest();

    try {
      final user = await _userService.register(email, password);

      if (user != null) {
        // success
        success = true;
      } else {
        // error
        error = 'Erro ao registrar usuário';
      }
    } on AuthException catch (e) {
      error = e.message;
    } finally {
      notifyListeners();
    }
  }

  void _preRequest() {
    error = null;
    success = false;

    notifyListeners();
  }
}
