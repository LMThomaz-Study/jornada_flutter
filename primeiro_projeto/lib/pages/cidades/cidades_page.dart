import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro_projeto/pages/cidades/model/cidade.dart';

class CidadesPage extends StatefulWidget {
  static const routeName = '/cidades';

  const CidadesPage({super.key});

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  List<Cidade> cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final citiesJson = await rootBundle.loadString('assets/cidades.json');
    final cidadesList = json.decode(citiesJson) as List<Map<String, dynamic>>;

    setState(() {
      cidades = cidadesList.map((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          final cidade = cidades[index];

          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.estado),
          );
        },
      ),
    );
  }
}
