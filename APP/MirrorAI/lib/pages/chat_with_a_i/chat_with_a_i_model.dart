import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chat_with_a_i_widget.dart' show ChatWithAIWidget;
import 'package:flutter/material.dart';

class ChatWithAIModel extends FlutterFlowModel<ChatWithAIWidget> {
  ///  Local state fields for this page.

  String? promptText = 'Hello!';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 40) {
      return 'Lets make that a bit smaller...';
    }

    return null;
  }

  // State field(s) for Prompt widget.
  FocusNode? promptFocusNode;
  TextEditingController? promptTextController;
  String? Function(BuildContext, String?)? promptTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Prompt widget.
  MessagesRecord? messagesDocument;
  // Stores action output result for [Firestore Query - Query a collection] action in Prompt widget.
  List<MessagesRecord>? listOfMessagesDoc;
  // Stores action output result for [Backend Call - API (AI Chat)] action in Prompt widget.
  ApiCallResponse? gptResponse;

  @override
  void initState(BuildContext context) {
    titleTextControllerValidator = _titleTextControllerValidator;
  }

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    promptFocusNode?.dispose();
    promptTextController?.dispose();
  }
}
