import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqLite {
  Future<void> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'SQLITE_EXAMPLE');

    await openDatabase(
      databaseFinalPath,
      version: 2,
      // Chamado a cada conexão ao banco de dados
      onConfigure: (db) async {
        // Habilitando as foreignKeys do banco de dados
        await db.execute('PRAGMA foreign_keys = ON');
      },
      // Chamado somente no momento de criação do banco de dados, primeira vez que carrega o app
      onCreate: (Database db, int version) {
        final batch = db.batch();

        batch.execute('''
          create table teste(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');
        batch.execute('''
          create table produto(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');

        batch.commit();
      },
      // Chamada sempre que houver uma alteração no version, incrementa (1 -> 2)
      onUpgrade: (Database db, int oldVersion, int version) {
        final batch = db.batch();

        if (oldVersion == 1) {
          batch.execute('''
            create table produto(
              id Integer primary key autoincrement,
              nome varchar(200)
            )
          ''');
        }

        batch.commit();
      },
      // Chamada sempre que houver uma alteração no version, decrementa (3 -> 2)
      onDowngrade: (Database db, int oldVersion, int version) {
        final batch = db.batch();

        if (oldVersion == 3) {
          batch.execute('''
            drop table categoria
          ''');
        }

        batch.commit();
      },
    );
  }
}
