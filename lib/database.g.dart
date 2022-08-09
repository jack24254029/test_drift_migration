// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
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

class $PartnerTable extends Partner with TableInfo<$PartnerTable, PartnerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PartnerTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
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
  VerificationContext validateIntegrity(Insertable<PartnerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  PartnerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PartnerData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PartnerTable createAlias(String alias) {
    return $PartnerTable(attachedDatabase, alias);
  }
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

class $GlucoseMappingTable extends GlucoseMapping
    with TableInfo<$GlucoseMappingTable, GlucoseMappingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GlucoseMappingTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
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
  VerificationContext validateIntegrity(Insertable<GlucoseMappingData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  GlucoseMappingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GlucoseMappingData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $GlucoseMappingTable createAlias(String alias) {
    return $GlucoseMappingTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$MyDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $PartnerTable partner = $PartnerTable(this);
  late final $GlucoseMappingTable glucoseMapping = $GlucoseMappingTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [partner, glucoseMapping];
}
