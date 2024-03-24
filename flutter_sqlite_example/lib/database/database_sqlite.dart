import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqLite {
  Future<void> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'SQLITE_EXAMPLE');

    await openDatabase(
      databaseFinalPath,
      version: 1,
      // Chamado somente no momento de criação do banco de dados, primeira vez que carrega o app
      onCreate: (Database db, int version) {
        final batch = db.batch();

        batch.execute('''
          create table teste(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');

        batch.commit();
      },
      // Chamada sempre que houver uma alteração no version, incrementa (1 -> 2)
      onUpgrade: (Database db, int oldVersion, int version) {},
      // Chamada sempre que houver uma alteração no version, decrementa (3 -> 2)
      onDowngrade: (Database db, int oldVersion, int version) {},
    );
  }
}
