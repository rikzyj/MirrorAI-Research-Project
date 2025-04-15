import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'start_chat_widget.dart' show StartChatWidget;
import 'package:flutter/material.dart';

class StartChatModel extends FlutterFlowModel<StartChatWidget> {
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

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  ChatsRecord? chatRef;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? msg3;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? msg4;
  // Stores action output result for [Backend Call - API (AI Chat)] action in TextField widget.
  ApiCallResponse? gptResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
