import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider/produto_model.dart';
import 'package:flutter_provider_example/provider/produto_widget.dart';
import 'package:flutter_provider_example/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  static const routerName = '/provider';

  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    // .read ele vai retornar uma instância sem ficar escutando alterações
    // final user = context.read<UserModel>();

    // final imgAvatar =
    //     context.select<UserModel, String>((userModel) => userModel.avatar);

    // final user = context.watch<UserModel>();

    return Provider(
      create: (_) {
        return ProdutoModel(nome: 'MacBook');
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.avatar),
                radius: 60,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.name),
                  Text(' (${user.birthDate})'),
                ],
              ),
              const SizedBox(height: 20),
              const ProdutoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
