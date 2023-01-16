import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reservation_record.g.dart';

abstract class ReservationRecord
    implements Built<ReservationRecord, ReservationRecordBuilder> {
  static Serializer<ReservationRecord> get serializer =>
      _$reservationRecordSerializer;

  String? get name;

  String? get description;

  String? get location;

  String? get time;

  bool? get isapproved;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReservationRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..location = ''
    ..time = ''
    ..isapproved = false
    ..userId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservation');

  static Stream<ReservationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReservationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReservationRecord._();
  factory ReservationRecord([void Function(ReservationRecordBuilder) updates]) =
      _$ReservationRecord;

  static ReservationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReservationRecordData({
  String? name,
  String? description,
  String? location,
  String? time,
  bool? isapproved,
  String? userId,
}) {
  final firestoreData = serializers.toFirestore(
    ReservationRecord.serializer,
    ReservationRecord(
      (r) => r
        ..name = name
        ..description = description
        ..location = location
        ..time = time
        ..isapproved = isapproved
        ..userId = userId,
    ),
  );

  return firestoreData;
}
