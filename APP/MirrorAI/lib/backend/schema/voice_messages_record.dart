import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoiceMessagesRecord extends FirestoreRecord {
  VoiceMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "firstMessage" field.
  bool? _firstMessage;
  bool get firstMessage => _firstMessage ?? false;
  bool hasFirstMessage() => _firstMessage != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _firstMessage = snapshotData['firstMessage'] as bool?;
    _message = snapshotData['message'] as String?;
    _user = snapshotData['user'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('voiceMessages')
          : FirebaseFirestore.instance.collectionGroup('voiceMessages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('voiceMessages').doc(id);

  static Stream<VoiceMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VoiceMessagesRecord.fromSnapshot(s));

  static Future<VoiceMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VoiceMessagesRecord.fromSnapshot(s));

  static VoiceMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VoiceMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VoiceMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VoiceMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VoiceMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VoiceMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVoiceMessagesRecordData({
  DateTime? timestamp,
  bool? firstMessage,
  String? message,
  String? user,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
      'firstMessage': firstMessage,
      'message': message,
      'user': user,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class VoiceMessagesRecordDocumentEquality
    implements Equality<VoiceMessagesRecord> {
  const VoiceMessagesRecordDocumentEquality();

  @override
  bool equals(VoiceMessagesRecord? e1, VoiceMessagesRecord? e2) {
    return e1?.timestamp == e2?.timestamp &&
        e1?.firstMessage == e2?.firstMessage &&
        e1?.message == e2?.message &&
        e1?.user == e2?.user &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(VoiceMessagesRecord? e) => const ListEquality()
      .hash([e?.timestamp, e?.firstMessage, e?.message, e?.user, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is VoiceMessagesRecord;
}
