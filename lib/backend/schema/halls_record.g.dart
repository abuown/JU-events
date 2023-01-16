// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'halls_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HallsRecord> _$hallsRecordSerializer = new _$HallsRecordSerializer();

class _$HallsRecordSerializer implements StructuredSerializer<HallsRecord> {
  @override
  final Iterable<Type> types = const [HallsRecord, _$HallsRecord];
  @override
  final String wireName = 'HallsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HallsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.checkinDate;
    if (value != null) {
      result
        ..add('checkinDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.checkoutDate;
    if (value != null) {
      result
        ..add('checkoutDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isAvailable;
    if (value != null) {
      result
        ..add('isAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.college;
    if (value != null) {
      result
        ..add('college')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.capaticity;
    if (value != null) {
      result
        ..add('capaticity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hallName;
    if (value != null) {
      result
        ..add('hall_name')
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
  HallsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HallsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'checkinDate':
          result.checkinDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'checkoutDate':
          result.checkoutDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'college':
          result.college = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'capaticity':
          result.capaticity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hall_name':
          result.hallName = serializers.deserialize(value,
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

class _$HallsRecord extends HallsRecord {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DateTime? checkinDate;
  @override
  final DateTime? checkoutDate;
  @override
  final bool? isAvailable;
  @override
  final String? image;
  @override
  final String? college;
  @override
  final DateTime? time;
  @override
  final int? capaticity;
  @override
  final String? hallName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HallsRecord([void Function(HallsRecordBuilder)? updates]) =>
      (new HallsRecordBuilder()..update(updates))._build();

  _$HallsRecord._(
      {this.userRef,
      this.checkinDate,
      this.checkoutDate,
      this.isAvailable,
      this.image,
      this.college,
      this.time,
      this.capaticity,
      this.hallName,
      this.ffRef})
      : super._();

  @override
  HallsRecord rebuild(void Function(HallsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HallsRecordBuilder toBuilder() => new HallsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HallsRecord &&
        userRef == other.userRef &&
        checkinDate == other.checkinDate &&
        checkoutDate == other.checkoutDate &&
        isAvailable == other.isAvailable &&
        image == other.image &&
        college == other.college &&
        time == other.time &&
        capaticity == other.capaticity &&
        hallName == other.hallName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, userRef.hashCode),
                                        checkinDate.hashCode),
                                    checkoutDate.hashCode),
                                isAvailable.hashCode),
                            image.hashCode),
                        college.hashCode),
                    time.hashCode),
                capaticity.hashCode),
            hallName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HallsRecord')
          ..add('userRef', userRef)
          ..add('checkinDate', checkinDate)
          ..add('checkoutDate', checkoutDate)
          ..add('isAvailable', isAvailable)
          ..add('image', image)
          ..add('college', college)
          ..add('time', time)
          ..add('capaticity', capaticity)
          ..add('hallName', hallName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HallsRecordBuilder implements Builder<HallsRecord, HallsRecordBuilder> {
  _$HallsRecord? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DateTime? _checkinDate;
  DateTime? get checkinDate => _$this._checkinDate;
  set checkinDate(DateTime? checkinDate) => _$this._checkinDate = checkinDate;

  DateTime? _checkoutDate;
  DateTime? get checkoutDate => _$this._checkoutDate;
  set checkoutDate(DateTime? checkoutDate) =>
      _$this._checkoutDate = checkoutDate;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _college;
  String? get college => _$this._college;
  set college(String? college) => _$this._college = college;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  int? _capaticity;
  int? get capaticity => _$this._capaticity;
  set capaticity(int? capaticity) => _$this._capaticity = capaticity;

  String? _hallName;
  String? get hallName => _$this._hallName;
  set hallName(String? hallName) => _$this._hallName = hallName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HallsRecordBuilder() {
    HallsRecord._initializeBuilder(this);
  }

  HallsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _checkinDate = $v.checkinDate;
      _checkoutDate = $v.checkoutDate;
      _isAvailable = $v.isAvailable;
      _image = $v.image;
      _college = $v.college;
      _time = $v.time;
      _capaticity = $v.capaticity;
      _hallName = $v.hallName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HallsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HallsRecord;
  }

  @override
  void update(void Function(HallsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HallsRecord build() => _build();

  _$HallsRecord _build() {
    final _$result = _$v ??
        new _$HallsRecord._(
            userRef: userRef,
            checkinDate: checkinDate,
            checkoutDate: checkoutDate,
            isAvailable: isAvailable,
            image: image,
            college: college,
            time: time,
            capaticity: capaticity,
            hallName: hallName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
