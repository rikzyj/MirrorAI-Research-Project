import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<MessagesRecord> initialMessages = [];
  void addToInitialMessages(MessagesRecord item) => initialMessages.add(item);
  void removeFromInitialMessages(MessagesRecord item) =>
      initialMessages.remove(item);
  void removeAtIndexFromInitialMessages(int index) =>
      initialMessages.removeAt(index);
  void insertAtIndexInInitialMessages(int index, MessagesRecord item) =>
      initialMessages.insert(index, item);
  void updateInitialMessagesAtIndex(
          int index, Function(MessagesRecord) updateFn) =>
      initialMessages[index] = updateFn(initialMessages[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
