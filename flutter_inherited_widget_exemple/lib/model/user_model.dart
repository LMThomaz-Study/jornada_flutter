import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String avatar;
  final String birthDate;

  const UserModel({
    super.key,
    required this.name,
    required this.avatar,
    required this.birthDate,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return oldWidget.avatar != avatar ||
        oldWidget.name != name ||
        oldWidget.birthDate != birthDate;
  }

  static UserModel of(BuildContext context) {
    final userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();

    assert(userModel != null, 'UserModel not exits in BuildContext');

    return userModel!;
  }
}
