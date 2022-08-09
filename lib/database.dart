import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:test_drift_migration/generated/schema_v2.dart' as v2;

part 'database.g.dart';

class Partner extends Table {
  IntColumn get uid => integer()();

  @override
  Set<Column>? get primaryKey => {uid};
}

class GlucoseMapping extends Table {
  IntColumn get uid => integer().references(Partner, #uid, onDelete: KeyAction.cascade)();

  @override
  Set<Column>? get primaryKey => {uid};
}

@DriftDatabase(
  tables: [Partner, GlucoseMapping],
)
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  MyDatabase.connect(DatabaseConnection connection) : super.connect(connection);

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (OpeningDetails details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
        onUpgrade: (Migrator m, int from, int to) async {
          for (int target = from; target < to; target++) {
            switch (target) {
              case 1:
                final targetDb = v2.DatabaseAtV2(executor);
                await m.alterTable(TableMigration(targetDb.glucoseMapping));
                break;
            }
          }
        },
      );
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
