import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class UserValidationCall {
  static Future<ApiCallResponse> call({
    String email = '',
    String authCode = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'userValidation',
      apiUrl: 'https://api.engage-sop.com/v1/users/auth/${email}/${authCode}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CheckForGroupCall {
  static Future<ApiCallResponse> call({
    String userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'checkForGroup',
      apiUrl: 'https://api.engage-sop.com/v1/groups/find/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CheckUserStatusCall {
  static Future<ApiCallResponse> call({
    String userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'checkUserStatus',
      apiUrl: 'https://api.engage-sop.com/v1/users/read/id/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class ReadUsersCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'readUsers',
      apiUrl: 'https://api.engage-sop.com/v1/users/read',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class ConfirmPresenceInCallCall {
  static Future<ApiCallResponse> call({
    String userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'confirmPresenceInCall',
      apiUrl: 'https://api.engage-sop.com/v1/users/confirm/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
