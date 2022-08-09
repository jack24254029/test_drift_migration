// GENERATED CODE, DO NOT EDIT BY HAND.
//@dart=2.12
import 'package:drift/drift.dart';

class Partner extends Table with TableInfo {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Partner(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int?> uid = GeneratedColumn<int?>(
      'uid', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [uid];
  @override
  String get aliasedName => _alias ?? 'partner';
  @override
  String get actualTableName => 'partner';
  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  Never map(Map<String, dynamic> data, {String? tablePrefix}) {
    throw UnsupportedError('TableInfo.map in schema verification code');
  }

  @override
  Partner createAlias(String alias) {
    return Partner(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => false;
}

class GlucoseMapping extends Table with TableInfo {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  GlucoseMapping(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int?> uid = GeneratedColumn<int?>(
      'uid', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES partner (uid) ON DELETE CASCADE');
  @override
  List<GeneratedColumn> get $columns => [uid];
  @override
  String get aliasedName => _alias ?? 'glucose_mapping';
  @override
  String get actualTableName => 'glucose_mapping';
  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  Never map(Map<String, dynamic> data, {String? tablePrefix}) {
    throw UnsupportedError('TableInfo.map in schema verification code');
  }

  @override
  GlucoseMapping createAlias(String alias) {
    return GlucoseMapping(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => false;
}

class DatabaseAtV2 extends GeneratedDatabase {
  DatabaseAtV2(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  DatabaseAtV2.connect(DatabaseConnection c) : super.connect(c);
  late final Partner partner = Partner(this);
  late final GlucoseMapping glucoseMapping = GlucoseMapping(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [partner, glucoseMapping];
  @override
  int get schemaVersion => 2;
}
