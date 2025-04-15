import '';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'speak_with_a_i_model.dart';
export 'speak_with_a_i_model.dart';

class SpeakWithAIWidget extends StatefulWidget {
  const SpeakWithAIWidget({super.key});

  static String routeName = 'SpeakWithAI';
  static String routePath = '/SpeakWithAI';

  @override
  State<SpeakWithAIWidget> createState() => _SpeakWithAIWidgetState();
}

class _SpeakWithAIWidgetState extends State<SpeakWithAIWidget>
    with TickerProviderStateMixin {
  late SpeakWithAIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeakWithAIModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SpeakWithAI'});
    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF09173A), Color(0xFF732295), Color(0xFFEFABAC)],
              stops: [0.1, 0.5, 1.0],
              begin: AlignmentDirectional(1.0, 0.87),
              end: AlignmentDirectional(-1.0, -0.87),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 900.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 5.0,
                                              color: Color(0x00FFFFFF),
                                              offset: Offset(
                                                1.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xDA25272D),
                                              Color(0x4231353C)
                                            ],
                                            stops: [0.0, 1.0],
                                            begin:
                                                AlignmentDirectional(1.0, 0.87),
                                            end: AlignmentDirectional(
                                                -1.0, -0.87),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: Color(0x56FFFFFF),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                if (_model.showWaveform)
                                                  Lottie.asset(
                                                    'assets/jsons/Animation_-_1737819353215.json',
                                                    width: 400.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                    animate: true,
                                                  ),
                                                if (_model.showWaveform)
                                                  FlutterFlowTimer(
                                                    initialTime:
                                                        FFAppState().timerValue,
                                                    getDisplayTime: (value) =>
                                                        StopWatchTimer
                                                            .getDisplayTime(
                                                      value,
                                                      hours: false,
                                                      minute: false,
                                                      milliSecond: false,
                                                    ),
                                                    controller:
                                                        _model.timerController,
                                                    updateStateInterval:
                                                        Duration(
                                                            milliseconds: 1000),
                                                    onChanged: (value,
                                                        displayTime,
                                                        shouldUpdate) {
                                                      _model.timerMilliseconds =
                                                          value;
                                                      _model.timerValue =
                                                          displayTime;
                                                      if (shouldUpdate)
                                                        safeSetState(() {});
                                                    },
                                                    onEnded: () async {
                                                      logFirebaseEvent(
                                                          'SPEAK_WITH_A_I_Timer_ywhgait7_ON_TIMER_E');
                                                      logFirebaseEvent(
                                                          'Timer_timer');
                                                      _model.timerController
                                                          .onResetTimer();

                                                      logFirebaseEvent(
                                                          'Timer_update_page_state');
                                                      _model.showWaveform =
                                                          false;
                                                      safeSetState(() {});
                                                    },
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Product Sans',
                                                          color:
                                                              Color(0x00FFFFFF),
                                                          fontSize: 2.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                if (!_model.showWaveform)
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(32.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (!_model.isRecording)
                                                          FlutterFlowIconButton(
                                                            borderRadius: 100.0,
                                                            buttonSize: 150.0,
                                                            fillColor: Color(
                                                                0xFF131313),
                                                            icon: Icon(
                                                              Icons.mic_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 60.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'SPEAK_WITH_A_I_mic_rounded_ICN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'IconButton_custom_action');
                                                              unawaited(
                                                                () async {
                                                                  await actions
                                                                      .startTextRecording();
                                                                }(),
                                                              );
                                                              logFirebaseEvent(
                                                                  'IconButton_update_page_state');
                                                              _model.isRecording =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        if (_model.isRecording)
                                                          FlutterFlowIconButton(
                                                            borderRadius: 100.0,
                                                            buttonSize: 150.0,
                                                            fillColor: Color(
                                                                0xFF131313),
                                                            icon: Icon(
                                                              Icons
                                                                  .stop_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 60.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'SPEAK_WITH_A_I_stop_rounded_ICN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'IconButton_update_page_state');
                                                              _model.isRecording =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              var voiceChatsRecordReference =
                                                                  VoiceChatsRecord
                                                                      .collection
                                                                      .doc();
                                                              await voiceChatsRecordReference
                                                                  .set(
                                                                      createVoiceChatsRecordData(
                                                                uid:
                                                                    currentUserReference,
                                                                timestamp:
                                                                    getCurrentTimestamp,
                                                                title: 'none',
                                                              ));
                                                              _model.vChatRef =
                                                                  VoiceChatsRecord
                                                                      .getDocumentFromData(
                                                                          createVoiceChatsRecordData(
                                                                            uid:
                                                                                currentUserReference,
                                                                            timestamp:
                                                                                getCurrentTimestamp,
                                                                            title:
                                                                                'none',
                                                                          ),
                                                                          voiceChatsRecordReference);
                                                              logFirebaseEvent(
                                                                  'IconButton_custom_action');
                                                              await actions
                                                                  .stopTextRecording();
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              var voiceMessagesRecordReference1 =
                                                                  VoiceMessagesRecord
                                                                      .createDoc(_model
                                                                          .vChatRef!
                                                                          .reference);
                                                              await voiceMessagesRecordReference1
                                                                  .set(
                                                                      createVoiceMessagesRecordData(
                                                                timestamp:
                                                                    getCurrentTimestamp,
                                                                firstMessage:
                                                                    false,
                                                                message:
                                                                    FFAppState()
                                                                        .gptOpener,
                                                                user: 'gpt',
                                                                uid:
                                                                    currentUserReference,
                                                              ));
                                                              _model.vMsg1 = VoiceMessagesRecord
                                                                  .getDocumentFromData(
                                                                      createVoiceMessagesRecordData(
                                                                        timestamp:
                                                                            getCurrentTimestamp,
                                                                        firstMessage:
                                                                            false,
                                                                        message:
                                                                            FFAppState().gptOpener,
                                                                        user:
                                                                            'gpt',
                                                                        uid:
                                                                            currentUserReference,
                                                                      ),
                                                                      voiceMessagesRecordReference1);
                                                              logFirebaseEvent(
                                                                  'IconButton_update_page_state');
                                                              _model.addToInitialVoiceMessages(
                                                                  _model
                                                                      .vMsg1!);
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');

                                                              var voiceMessagesRecordReference2 =
                                                                  VoiceMessagesRecord
                                                                      .createDoc(_model
                                                                          .vChatRef!
                                                                          .reference);
                                                              await voiceMessagesRecordReference2
                                                                  .set(
                                                                      createVoiceMessagesRecordData(
                                                                timestamp:
                                                                    getCurrentTimestamp,
                                                                firstMessage:
                                                                    false,
                                                                message:
                                                                    FFAppState()
                                                                        .speechToTextResponse,
                                                                user: 'user',
                                                                uid:
                                                                    currentUserReference,
                                                              ));
                                                              _model.vMsg2 = VoiceMessagesRecord
                                                                  .getDocumentFromData(
                                                                      createVoiceMessagesRecordData(
                                                                        timestamp:
                                                                            getCurrentTimestamp,
                                                                        firstMessage:
                                                                            false,
                                                                        message:
                                                                            FFAppState().speechToTextResponse,
                                                                        user:
                                                                            'user',
                                                                        uid:
                                                                            currentUserReference,
                                                                      ),
                                                                      voiceMessagesRecordReference2);
                                                              logFirebaseEvent(
                                                                  'IconButton_update_page_state');
                                                              _model.addToInitialVoiceMessages(
                                                                  _model
                                                                      .vMsg2!);
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  'IconButton_backend_call');
                                                              _model.getResponseAPICall =
                                                                  await GetResponseHFCall
                                                                      .call(
                                                                prompt: functions
                                                                    .generateVoiceMessages(
                                                                        _model
                                                                            .initialVoiceMessages
                                                                            .toList(),
                                                                        FFAppState()
                                                                            .speechToTextResponse)
                                                                    .toString(),
                                                                apiKey:
                                                                    FFAppState()
                                                                        .HFAPI,
                                                              );

                                                              if ((_model
                                                                      .getResponseAPICall
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                logFirebaseEvent(
                                                                    'IconButton_custom_action');
                                                                _model.speechOutput =
                                                                    await actions
                                                                        .fetchSpeechAndPlay(
                                                                  getJsonField(
                                                                    (_model.getResponseAPICall
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.choices[:].message.content''',
                                                                  ).toString(),
                                                                  FFAppState()
                                                                      .apiKey,
                                                                );
                                                                logFirebaseEvent(
                                                                    'IconButton_backend_call');

                                                                var voiceMessagesRecordReference3 =
                                                                    VoiceMessagesRecord.createDoc(_model
                                                                        .vChatRef!
                                                                        .reference);
                                                                await voiceMessagesRecordReference3
                                                                    .set(
                                                                        createVoiceMessagesRecordData(
                                                                  timestamp:
                                                                      getCurrentTimestamp,
                                                                  firstMessage:
                                                                      false,
                                                                  message:
                                                                      GetResponseHFCall
                                                                          .hPAPIResponse(
                                                                    (_model.getResponseAPICall
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  user: 'gpt',
                                                                  uid:
                                                                      currentUserReference,
                                                                ));
                                                                _model.vMsg3 = VoiceMessagesRecord
                                                                    .getDocumentFromData(
                                                                        createVoiceMessagesRecordData(
                                                                          timestamp:
                                                                              getCurrentTimestamp,
                                                                          firstMessage:
                                                                              false,
                                                                          message:
                                                                              GetResponseHFCall.hPAPIResponse(
                                                                            (_model.getResponseAPICall?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          user:
                                                                              'gpt',
                                                                          uid:
                                                                              currentUserReference,
                                                                        ),
                                                                        voiceMessagesRecordReference3);
                                                                logFirebaseEvent(
                                                                    'IconButton_update_page_state');
                                                                _model.addToInitialVoiceMessages(
                                                                    _model
                                                                        .vMsg3!);
                                                                safeSetState(
                                                                    () {});
                                                                logFirebaseEvent(
                                                                    'IconButton_update_app_state');
                                                                FFAppState()
                                                                        .timerValue =
                                                                    _model
                                                                        .speechOutput!;
                                                                FFAppState()
                                                                    .speechToTextResponse = '';
                                                                safeSetState(
                                                                    () {});
                                                                logFirebaseEvent(
                                                                    'IconButton_update_page_state');
                                                                _model.showWaveform =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                logFirebaseEvent(
                                                                    'IconButton_wait__delay');
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            100));
                                                                logFirebaseEvent(
                                                                    'IconButton_timer');
                                                                _model
                                                                    .timerController
                                                                    .onStartTimer();
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'IconButton_show_snack_bar');
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Failed',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            4000),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                  ),
                                                                );
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'columnOnPageLoadAnimation']!),
                                                  ),
                                              ],
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'SPEAK_WITH_A_I_PAGE_Text_axeu3dvs_ON_TAP');
                                                logFirebaseEvent(
                                                    'Text_navigate_to');

                                                context.pushNamed(
                                                    HomeWidget.routeName);
                                              },
                                              child: Text(
                                                'Home',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
