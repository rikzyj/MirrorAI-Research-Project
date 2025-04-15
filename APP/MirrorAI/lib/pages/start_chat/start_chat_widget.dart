import '';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'start_chat_model.dart';
export 'start_chat_model.dart';

class StartChatWidget extends StatefulWidget {
  const StartChatWidget({super.key});

  static String routeName = 'StartChat';
  static String routePath = '/StartChat';

  @override
  State<StartChatWidget> createState() => _StartChatWidgetState();
}

class _StartChatWidgetState extends State<StartChatWidget>
    with TickerProviderStateMixin {
  late StartChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartChatModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'StartChat'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 260.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 260.0.ms,
            begin: Offset(0.0, 18.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 260.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 260.0.ms,
            begin: Offset(0.0, 18.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 350.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(64.0, 100.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 350.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderRadius: 4.0,
                                                      buttonSize: 35.0,
                                                      fillColor:
                                                          Color(0x00FFFFFF),
                                                      hoverColor:
                                                          Color(0xA62E313C),
                                                      hoverIconColor:
                                                          Colors.white,
                                                      icon: Icon(
                                                        Icons.menu_rounded,
                                                        color:
                                                            Color(0xFFBBC5D3),
                                                        size: 18.0,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'START_CHAT_PAGE_menu_rounded_ICN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'IconButton_drawer');
                                                        scaffoldKey
                                                            .currentState!
                                                            .openDrawer();
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 30.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'How can I help you today?',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFB7BDC7),
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ).animateOnPageLoad(animationsMap[
                                                  'rowOnPageLoadAnimation']!),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: Container(
                                                width: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxWidth: 600.0,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 15.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller:
                                                          _model.textController,
                                                      focusNode: _model
                                                          .textFieldFocusNode,
                                                      onFieldSubmitted:
                                                          (_) async {
                                                        logFirebaseEvent(
                                                            'START_CHAT_TextField_ovagrpkj_ON_TEXTFIE');
                                                        var _shouldSetState =
                                                            false;
                                                        logFirebaseEvent(
                                                            'TextField_backend_call');

                                                        var chatsRecordReference =
                                                            ChatsRecord
                                                                .collection
                                                                .doc();
                                                        await chatsRecordReference
                                                            .set(
                                                                createChatsRecordData(
                                                          uid:
                                                              currentUserReference,
                                                          title: valueOrDefault<
                                                              String>(
                                                            'Chat Title (${valueOrDefault<String>(
                                                              dateTimeFormat(
                                                                  "M/d h:mm a",
                                                                  getCurrentTimestamp),
                                                              'Chart Title',
                                                            )})',
                                                            'Chat Title',
                                                          ),
                                                        ));
                                                        _model.chatRef = ChatsRecord
                                                            .getDocumentFromData(
                                                                createChatsRecordData(
                                                                  uid:
                                                                      currentUserReference,
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    'Chat Title (${valueOrDefault<String>(
                                                                      dateTimeFormat(
                                                                          "M/d h:mm a",
                                                                          getCurrentTimestamp),
                                                                      'Chart Title',
                                                                    )})',
                                                                    'Chat Title',
                                                                  ),
                                                                ),
                                                                chatsRecordReference);
                                                        _shouldSetState = true;
                                                        logFirebaseEvent(
                                                            'TextField_update_app_state');
                                                        FFAppState()
                                                                .awaitingReply =
                                                            true;
                                                        FFAppState().prompt =
                                                            _model
                                                                .textController
                                                                .text;
                                                        FFAppState()
                                                            .update(() {});
                                                        logFirebaseEvent(
                                                            'TextField_widget_animation');
                                                        if (animationsMap[
                                                                'containerOnActionTriggerAnimation'] !=
                                                            null) {
                                                          await animationsMap[
                                                                  'containerOnActionTriggerAnimation']!
                                                              .controller
                                                              .forward(
                                                                  from: 0.0);
                                                        }
                                                        logFirebaseEvent(
                                                            'TextField_backend_call');

                                                        var messagesRecordReference1 =
                                                            MessagesRecord
                                                                .createDoc(_model
                                                                    .chatRef!
                                                                    .reference);
                                                        await messagesRecordReference1
                                                            .set(
                                                                createMessagesRecordData(
                                                          timestamp:
                                                              getCurrentTimestamp,
                                                          firstMessage: false,
                                                          message: FFAppState()
                                                              .gptOpener,
                                                          user: 'gpt',
                                                          uid:
                                                              currentUserReference,
                                                        ));
                                                        _model.msg3 = MessagesRecord
                                                            .getDocumentFromData(
                                                                createMessagesRecordData(
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
                                                                ),
                                                                messagesRecordReference1);
                                                        _shouldSetState = true;
                                                        logFirebaseEvent(
                                                            'TextField_update_page_state');
                                                        _model
                                                            .addToInitialMessages(
                                                                _model.msg3!);
                                                        safeSetState(() {});
                                                        logFirebaseEvent(
                                                            'TextField_backend_call');

                                                        var messagesRecordReference2 =
                                                            MessagesRecord
                                                                .createDoc(_model
                                                                    .chatRef!
                                                                    .reference);
                                                        await messagesRecordReference2
                                                            .set(
                                                                createMessagesRecordData(
                                                          timestamp:
                                                              getCurrentTimestamp,
                                                          firstMessage: false,
                                                          message: _model
                                                              .textController
                                                              .text,
                                                          user: 'user',
                                                          uid:
                                                              currentUserReference,
                                                        ));
                                                        _model.msg4 = MessagesRecord
                                                            .getDocumentFromData(
                                                                createMessagesRecordData(
                                                                  timestamp:
                                                                      getCurrentTimestamp,
                                                                  firstMessage:
                                                                      false,
                                                                  message: _model
                                                                      .textController
                                                                      .text,
                                                                  user: 'user',
                                                                  uid:
                                                                      currentUserReference,
                                                                ),
                                                                messagesRecordReference2);
                                                        _shouldSetState = true;
                                                        logFirebaseEvent(
                                                            'TextField_update_page_state');
                                                        _model
                                                            .addToInitialMessages(
                                                                _model.msg4!);
                                                        safeSetState(() {});
                                                        logFirebaseEvent(
                                                            'TextField_clear_text_fields_pin_codes');
                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.clear();
                                                        });
                                                        logFirebaseEvent(
                                                            'TextField_navigate_to');

                                                        context.goNamed(
                                                          ChatWithAIWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'chatRef':
                                                                serializeParam(
                                                              _model.chatRef
                                                                  ?.reference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );

                                                        logFirebaseEvent(
                                                            'TextField_backend_call');
                                                        _model.gptResponse =
                                                            await AIChatCall
                                                                .call(
                                                          messages: functions
                                                              .generateMessages(
                                                                  _model
                                                                      .initialMessages
                                                                      .toList(),
                                                                  FFAppState()
                                                                      .prompt)
                                                              .toString(),
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model.gptResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          logFirebaseEvent(
                                                              'TextField_backend_call');

                                                          await MessagesRecord
                                                                  .createDoc(_model
                                                                      .chatRef!
                                                                      .reference)
                                                              .set(
                                                                  createMessagesRecordData(
                                                            timestamp:
                                                                getCurrentTimestamp,
                                                            firstMessage: false,
                                                            message: (AIChatCall
                                                                    .messageContentA(
                                                              (_model.gptResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!)
                                                                .trim(),
                                                            user: 'gpt',
                                                            uid:
                                                                currentUserReference,
                                                          ));
                                                          logFirebaseEvent(
                                                              'TextField_update_app_state');
                                                          FFAppState()
                                                                  .awaitingReply =
                                                              false;
                                                          FFAppState()
                                                              .update(() {});
                                                          logFirebaseEvent(
                                                              'TextField_widget_animation');
                                                          if (animationsMap[
                                                                  'containerOnActionTriggerAnimation'] !=
                                                              null) {
                                                            await animationsMap[
                                                                    'containerOnActionTriggerAnimation']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        } else {
                                                          logFirebaseEvent(
                                                              'TextField_show_snack_bar');
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .clearSnackBars();
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Oops, looks like that didn\'t go through. Let\'s try again!',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      3000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                          logFirebaseEvent(
                                                              'TextField_update_app_state');
                                                          FFAppState()
                                                                  .awaitingReply =
                                                              false;
                                                          FFAppState()
                                                              .update(() {});
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                      },
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFA5AAB4),
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintText:
                                                            'Ask me anything...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFA5AAB4),
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            width: 0.2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 0.2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 0.2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 0.2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0x0FFFFFFF),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    15.0,
                                                                    20.0,
                                                                    15.0),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFFA5AAB4),
                                                            fontSize: 11.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                      validator: _model
                                                          .textControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              )
                                                  .animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation']!)
                                                  .animateOnActionTrigger(
                                                    animationsMap[
                                                        'containerOnActionTriggerAnimation']!,
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
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'START_CHAT_PAGE_Text_0mpwi054_ON_TAP');
                                logFirebaseEvent('Text_navigate_to');

                                context.pushNamed(HomeWidget.routeName);
                              },
                              child: Text(
                                'Home',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
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
