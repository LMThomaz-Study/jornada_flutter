import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  static const routeName = '/detalhe';

  const Detalhe({super.key});

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int id = 0; // com o addPostFrameCallback não é possível definir como late

  @override
  void initState() {
    // Adicionando uma função para ser chamada logo após carregar a página
    //  foi necessário pela utilização do context
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'] ?? 0;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Obter parâmetro dentro do build em caso de Stateless
    // final param = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: Center(
        // child: Text('O ID do produto é ${param?['id'] ?? 0}'),
        child: Text('O ID do produto é $id'),
      ),
    );
  }
}
