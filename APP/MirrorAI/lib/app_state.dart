import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _systemMessage = prefs.getString('ff_systemMessage') ?? _systemMessage;
    });
    _safeInit(() {
      _userReinforcement =
          prefs.getString('ff_userReinforcement') ?? _userReinforcement;
    });
    _safeInit(() {
      _gptOpener = prefs.getString('ff_gptOpener') ?? _gptOpener;
    });
    _safeInit(() {
      _apiKey = prefs.getString('ff_apiKey') ?? _apiKey;
    });
    _safeInit(() {
      _HFAPI = prefs.getString('ff_HFAPI') ?? _HFAPI;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _systemMessage =
      'You are a helpful AI assistant that helps answer any questions people may have!';
  String get systemMessage => _systemMessage;
  set systemMessage(String value) {
    _systemMessage = value;
    prefs.setString('ff_systemMessage', value);
  }

  String _userReinforcement =
      'Hello! Just to reiterate, you are a helpful AI assistant that helps answer any questions people may have!';
  String get userReinforcement => _userReinforcement;
  set userReinforcement(String value) {
    _userReinforcement = value;
    prefs.setString('ff_userReinforcement', value);
  }

  String _gptOpener = 'How can I help you today?';
  String get gptOpener => _gptOpener;
  set gptOpener(String value) {
    _gptOpener = value;
    prefs.setString('ff_gptOpener', value);
  }

  bool _awaitingReply = false;
  bool get awaitingReply => _awaitingReply;
  set awaitingReply(bool value) {
    _awaitingReply = value;
  }

  String _prompt = '';
  String get prompt => _prompt;
  set prompt(String value) {
    _prompt = value;
  }

  String _apiKey =
      'sk-BQeOeWHdHJvS4uJYMkf76e0oUYgrxeZM4WNk6BNZS5T3BlbkFJEt3ksOTNYzvY5i6UIH47ykF2rS1-7lzgL0zWhzh1IA';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
    prefs.setString('ff_apiKey', value);
  }

  String _speechToTextResponse = '';
  String get speechToTextResponse => _speechToTextResponse;
  set speechToTextResponse(String value) {
    _speechToTextResponse = value;
  }

  int _timerValue = 0;
  int get timerValue => _timerValue;
  set timerValue(int value) {
    _timerValue = value;
  }

  String _HFAPI = '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';
  String get HFAPI => _HFAPI;
  set HFAPI(String value) {
    _HFAPI = value;
    prefs.setString('ff_HFAPI', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
