import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  static const routeName = '/scrolls/listview_page';

  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          height: 12,
          thickness: .5,
        ),
        itemBuilder: (context, index) => SizedBox(
          child: ListTile(
            title: Text('Usuário $index'),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/fotos-gratis/fundo-colorido-desfocado-vivido_58702-2655.jpg'),
              child: Icon(Icons.person),
            ),
            subtitle: const Text('Carregando...'),
            trailing: const Icon(Icons.notifications),
          ),
        ),
      ),
    );
  }
}
