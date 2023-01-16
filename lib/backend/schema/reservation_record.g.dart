// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReservationRecord> _$reservationRecordSerializer =
    new _$ReservationRecordSerializer();

class _$ReservationRecordSerializer
    implements StructuredSerializer<ReservationRecord> {
  @override
  final Iterable<Type> types = const [ReservationRecord, _$ReservationRecord];
  @override
  final String wireName = 'ReservationRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReservationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isapproved;
    if (value != null) {
      result
        ..add('isapproved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ReservationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReservationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isapproved':
          result.isapproved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ReservationRecord extends ReservationRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? time;
  @override
  final bool? isapproved;
  @override
  final String? userId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReservationRecord(
          [void Function(ReservationRecordBuilder)? updates]) =>
      (new ReservationRecordBuilder()..update(updates))._build();

  _$ReservationRecord._(
      {this.name,
      this.description,
      this.location,
      this.time,
      this.isapproved,
      this.userId,
      this.ffRef})
      : super._();

  @override
  ReservationRecord rebuild(void Function(ReservationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationRecordBuilder toBuilder() =>
      new ReservationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservationRecord &&
        name == other.name &&
        description == other.description &&
        location == other.location &&
        time == other.time &&
        isapproved == other.isapproved &&
        userId == other.userId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        location.hashCode),
                    time.hashCode),
                isapproved.hashCode),
            userId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReservationRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('location', location)
          ..add('time', time)
          ..add('isapproved', isapproved)
          ..add('userId', userId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReservationRecordBuilder
    implements Builder<ReservationRecord, ReservationRecordBuilder> {
  _$ReservationRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  bool? _isapproved;
  bool? get isapproved => _$this._isapproved;
  set isapproved(bool? isapproved) => _$this._isapproved = isapproved;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReservationRecordBuilder() {
    ReservationRecord._initializeBuilder(this);
  }

  ReservationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _location = $v.location;
      _time = $v.time;
      _isapproved = $v.isapproved;
      _userId = $v.userId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservationRecord;
  }

  @override
  void update(void Function(ReservationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservationRecord build() => _build();

  _$ReservationRecord _build() {
    final _$result = _$v ??
        new _$ReservationRecord._(
            name: name,
            description: description,
            location: location,
            time: time,
            isapproved: isapproved,
            userId: userId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
