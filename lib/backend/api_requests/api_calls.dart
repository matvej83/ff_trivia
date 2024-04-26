import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

Future<ApiCallResponse?> getCategoriesCall({
  int count = 4,
  int offset = 0,
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'getCategories',
    apiUrl: 'https://jservice.io/api/categories',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'count': count,
      'offset': offset,
    },
    returnBody: true,
    body: '',
    bodyType: BodyType.JSON,
  );
}

Future<ApiCallResponse?> categoryCall({
  required int id,
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'category',
    apiUrl: 'https://jservice.io/api/category',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'id': id,
    },
    returnBody: true,
    body: '',
    bodyType: BodyType.JSON,
  );
}

Future<ApiCallResponse?> questionCall({
  required int category,
  required int value,
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'question',
    apiUrl: 'https://jservice.io/api/clues',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'category': category,
      'value': value,
    },
    returnBody: true,
    body: '',
    bodyType: BodyType.JSON,
  );
}

Future<ApiCallResponse?> allQuestionsCall({
  required int category,
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'allQuestions',
    apiUrl: 'https://jservice.io/api/clues',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'category': category,
    },
    returnBody: true,
    body: '',
    bodyType: BodyType.JSON,
  );
}
