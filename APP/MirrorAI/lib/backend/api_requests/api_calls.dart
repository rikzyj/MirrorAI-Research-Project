import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AIChatCall {
  static Future<ApiCallResponse> call({
    String? messages = 'Hello',
    String? apiKey = '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',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "tgi",
  "messages": ${messages},
  "top_p": null,
  "temperature": null,
  "max_tokens": 150,
  "stream": false,
  "seed": null,
  "stop": null,
  "frequency_penalty": null,
  "presence_penalty": null
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AI Chat',
      apiUrl:
          'https://ngbudc7uuoyjttwh.us-east-1.aws.endpoints.huggingface.cloud/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? messageContentA(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
  static String? messageContent(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].generated_text''',
      ));
  static String? mc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class GetResponseCall {
  static Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? prompt = '',
    String? language = '',
  }) async {
    final ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "${escapeStringForJson(prompt)}. Return a response that could be read allowed in a total of about 13-15 seconds in ${escapeStringForJson(language)} (language code)"
    }
  ],
  "model": "gpt-4-1106-preview",
  "max_tokens": 100
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetResponse',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class GetResponseHFCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
    String? apiKey = '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',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "tgi",
  "messages": [
    {
      "role": "user",
      "content": "${escapeStringForJson(prompt)}"
    }
  ],
  "top_p": null,
  "temperature": null,
  "max_tokens": 250,
  "stream": false,
  "seed": null,
  "stop": null,
  "frequency_penalty": null,
  "presence_penalty": null
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetResponseHF',
      apiUrl:
          'https://ngbudc7uuoyjttwh.us-east-1.aws.endpoints.huggingface.cloud/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? hPAPIResponse(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
