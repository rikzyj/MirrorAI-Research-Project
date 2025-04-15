import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'speak_with_a_i_widget.dart' show SpeakWithAIWidget;
import 'package:flutter/material.dart';

class SpeakWithAIModel extends FlutterFlowModel<SpeakWithAIWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  bool showWaveform = false;

  List<VoiceMessagesRecord> initialVoiceMessages = [];
  void addToInitialVoiceMessages(VoiceMessagesRecord item) =>
      initialVoiceMessages.add(item);
  void removeFromInitialVoiceMessages(VoiceMessagesRecord item) =>
      initialVoiceMessages.remove(item);
  void removeAtIndexFromInitialVoiceMessages(int index) =>
      initialVoiceMessages.removeAt(index);
  void insertAtIndexInInitialVoiceMessages(
          int index, VoiceMessagesRecord item) =>
      initialVoiceMessages.insert(index, item);
  void updateInitialVoiceMessagesAtIndex(
          int index, Function(VoiceMessagesRecord) updateFn) =>
      initialVoiceMessages[index] = updateFn(initialVoiceMessages[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  VoiceChatsRecord? vChatRef;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  VoiceMessagesRecord? vMsg1;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  VoiceMessagesRecord? vMsg2;
  // Stores action output result for [Backend Call - API (GetResponseHF)] action in IconButton widget.
  ApiCallResponse? getResponseAPICall;
  // Stores action output result for [Custom Action - fetchSpeechAndPlay] action in IconButton widget.
  int? speechOutput;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  VoiceMessagesRecord? vMsg3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
