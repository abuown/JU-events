import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'halls_record.g.dart';

abstract class HallsRecord implements Built<HallsRecord, HallsRecordBuilder> {
  static Serializer<HallsRecord> get serializer => _$hallsRecordSerializer;

  DocumentReference? get userRef;

  DateTime? get checkinDate;

  DateTime? get checkoutDate;

  bool? get isAvailable;

  String? get image;

  String? get college;

  DateTime? get time;

  int? get capaticity;

  @BuiltValueField(wireName: 'hall_name')
  String? get hallName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HallsRecordBuilder builder) => builder
    ..isAvailable = false
    ..image = ''
    ..college = ''
    ..capaticity = 0
    ..hallName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('halls');

  static Stream<HallsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HallsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HallsRecord._();
  factory HallsRecord([void Function(HallsRecordBuilder) updates]) =
      _$HallsRecord;

  static HallsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHallsRecordData({
  DocumentReference? userRef,
  DateTime? checkinDate,
  DateTime? checkoutDate,
  bool? isAvailable,
  String? image,
  String? college,
  DateTime? time,
  int? capaticity,
  String? hallName,
}) {
  final firestoreData = serializers.toFirestore(
    HallsRecord.serializer,
    HallsRecord(
      (h) => h
        ..userRef = userRef
        ..checkinDate = checkinDate
        ..checkoutDate = checkoutDate
        ..isAvailable = isAvailable
        ..image = image
        ..college = college
        ..time = time
        ..capaticity = capaticity
        ..hallName = hallName,
    ),
  );

  return firestoreData;
}
