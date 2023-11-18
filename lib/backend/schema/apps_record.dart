import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppsRecord extends FirestoreRecord {
  AppsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "calender" field.
  DateTime? _calender;
  DateTime? get calender => _calender;
  bool hasCalender() => _calender != null;

  // "Diseasecase" field.
  String? _diseasecase;
  String get diseasecase => _diseasecase ?? '';
  bool hasDiseasecase() => _diseasecase != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "barcode" field.
  List<String>? _barcode;
  List<String> get barcode => _barcode ?? const [];
  bool hasBarcode() => _barcode != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _age = snapshotData['age'] as String?;
    _phone = snapshotData['phone'] as String?;
    _calender = snapshotData['calender'] as DateTime?;
    _diseasecase = snapshotData['Diseasecase'] as String?;
    _image = getDataList(snapshotData['image']);
    _barcode = getDataList(snapshotData['barcode']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Apps');

  static Stream<AppsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppsRecord.fromSnapshot(s));

  static Future<AppsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppsRecord.fromSnapshot(s));

  static AppsRecord fromSnapshot(DocumentSnapshot snapshot) => AppsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppsRecordData({
  String? name,
  String? age,
  String? phone,
  DateTime? calender,
  String? diseasecase,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'age': age,
      'phone': phone,
      'calender': calender,
      'Diseasecase': diseasecase,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppsRecordDocumentEquality implements Equality<AppsRecord> {
  const AppsRecordDocumentEquality();

  @override
  bool equals(AppsRecord? e1, AppsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.age == e2?.age &&
        e1?.phone == e2?.phone &&
        e1?.calender == e2?.calender &&
        e1?.diseasecase == e2?.diseasecase &&
        listEquality.equals(e1?.image, e2?.image) &&
        listEquality.equals(e1?.barcode, e2?.barcode);
  }

  @override
  int hash(AppsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.age,
        e?.phone,
        e?.calender,
        e?.diseasecase,
        e?.image,
        e?.barcode
      ]);

  @override
  bool isValidKey(Object? o) => o is AppsRecord;
}
