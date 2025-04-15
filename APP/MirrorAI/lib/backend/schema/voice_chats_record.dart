import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoiceChatsRecord extends FirestoreRecord {
  VoiceChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('voiceChats');

  static Stream<VoiceChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VoiceChatsRecord.fromSnapshot(s));

  static Future<VoiceChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VoiceChatsRecord.fromSnapshot(s));

  static VoiceChatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VoiceChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VoiceChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VoiceChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VoiceChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VoiceChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVoiceChatsRecordData({
  DocumentReference? uid,
  DateTime? timestamp,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'timestamp': timestamp,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class VoiceChatsRecordDocumentEquality implements Equality<VoiceChatsRecord> {
  const VoiceChatsRecordDocumentEquality();

  @override
  bool equals(VoiceChatsRecord? e1, VoiceChatsRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.timestamp == e2?.timestamp &&
        e1?.title == e2?.title;
  }

  @override
  int hash(VoiceChatsRecord? e) =>
      const ListEquality().hash([e?.uid, e?.timestamp, e?.title]);

  @override
  bool isValidKey(Object? o) => o is VoiceChatsRecord;
}
