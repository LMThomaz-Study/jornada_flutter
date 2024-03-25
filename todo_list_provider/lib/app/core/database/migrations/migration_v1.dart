import 'package:sqflite_common/sqlite_api.dart';
import 'package:todo_list_provider/app/core/database/migrations/migration.dart';

class MigrationV1 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
      CREATE TABLE todo (
        id Interger primary key autoincrement,
        description varchar(500) not null,
        date datetime,
        finish integer
      )
    ''');
  }

  @override
  void update(Batch batch) {
    // TODO: implement update
  }
}
