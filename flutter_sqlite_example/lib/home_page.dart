import 'package:flutter/material.dart';
import 'package:flutter_sqlite_example/database/database_sqlite.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _database();
  }

  Future<void> _database() async {
    final database = await DatabaseSqLite().openConnection();

    await database.insert(
      'teste',
      {'nome': 'Leonardo Thomaz'},
    );

    await database.delete(
      'teste',
      where: 'nome = ?',
      whereArgs: ['Leonardo Thomaz'],
    );

    await database.update(
      'teste',
      {'nome': 'Thomaz'},
      where: 'nome = ?',
      whereArgs: ['Leonardo Thomaz'],
    );

    final result = await database.query('teste');
    print(result);

    await database.rawInsert(
      'INSERT INTO teste VALUES(null, ?)',
      ['Robertinho Guerreiro'],
    );

    await database.rawUpdate(
      'UPDATE teste SET nome = ? WHERE id = ?',
      ['Cleiton Pondera', 1],
    );

    await database.rawDelete(
      'DELETE FROM teste WHERE id = ?',
      [1],
    );

    final result2 = await database.rawQuery('SELECT * FROM teste');
    print(result2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
