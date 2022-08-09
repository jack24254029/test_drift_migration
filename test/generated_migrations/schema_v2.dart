// GENERATED CODE, DO NOT EDIT BY HAND.
//@dart=2.12
import 'package:drift/drift.dart';

class PartnerData extends DataClass implements Insertable<PartnerData> {
  final int uid;
  PartnerData({required this.uid});
  factory PartnerData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PartnerData(
      uid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uid'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<int>(uid);
    return map;
  }

  PartnerCompanion toCompanion(bool nullToAbsent) {
    return PartnerCompanion(
      uid: Value(uid),
    );
  }

  factory PartnerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PartnerData(
      uid: serializer.fromJson<int>(json['uid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<int>(uid),
    };
  }

  PartnerData copyWith({int? uid}) => PartnerData(
        uid: uid ?? this.uid,
      );
  @override
  String toString() {
    return (StringBuffer('PartnerData(')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => uid.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is PartnerData && other.uid == this.uid);
}

class PartnerCompanion extends UpdateCompanion<PartnerData> {
  final Value<int> uid;
  const PartnerCompanion({
    this.uid = const Value.absent(),
  });
  PartnerCompanion.insert({
    this.uid = const Value.absent(),
  });
  static Insertable<PartnerData> custom({
    Expression<int>? uid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
    });
  }

  PartnerCompanion copyWith({Value<int>? uid}) {
    return PartnerCompanion(
      uid: uid ?? this.uid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<int>(uid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PartnerCompanion(')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }
}

class Partner extends Table with TableInfo<Partner, PartnerData> {
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
  PartnerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PartnerData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Partner createAlias(String alias) {
    return Partner(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => false;
}

class GlucoseMappingData extends DataClass
    implements Insertable<GlucoseMappingData> {
  final int uid;
  GlucoseMappingData({required this.uid});
  factory GlucoseMappingData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return GlucoseMappingData(
      uid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uid'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<int>(uid);
    return map;
  }

  GlucoseMappingCompanion toCompanion(bool nullToAbsent) {
    return GlucoseMappingCompanion(
      uid: Value(uid),
    );
  }

  factory GlucoseMappingData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GlucoseMappingData(
      uid: serializer.fromJson<int>(json['uid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<int>(uid),
    };
  }

  GlucoseMappingData copyWith({int? uid}) => GlucoseMappingData(
        uid: uid ?? this.uid,
      );
  @override
  String toString() {
    return (StringBuffer('GlucoseMappingData(')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => uid.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GlucoseMappingData && other.uid == this.uid);
}

class GlucoseMappingCompanion extends UpdateCompanion<GlucoseMappingData> {
  final Value<int> uid;
  const GlucoseMappingCompanion({
    this.uid = const Value.absent(),
  });
  GlucoseMappingCompanion.insert({
    this.uid = const Value.absent(),
  });
  static Insertable<GlucoseMappingData> custom({
    Expression<int>? uid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
    });
  }

  GlucoseMappingCompanion copyWith({Value<int>? uid}) {
    return GlucoseMappingCompanion(
      uid: uid ?? this.uid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<int>(uid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GlucoseMappingCompanion(')
          ..write('uid: $uid')
          ..write(')'))
        .toString();
  }
}

class GlucoseMapping extends Table
    with TableInfo<GlucoseMapping, GlucoseMappingData> {
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
  GlucoseMappingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GlucoseMappingData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
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
