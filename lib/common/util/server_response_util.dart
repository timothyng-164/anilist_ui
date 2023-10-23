import 'package:anilist_ui/common/model/server_response.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ServerResponseUtil {
  static bool responseContainsStatus(
    OperationException? operationException,
    int statusCode,
  ) {
    if (operationException == null) return false;
    if (operationException.linkException is ServerException == false) {
      return false;
    }

    var serverException = operationException.linkException as ServerException;
    if (serverException.parsedResponse?.response == null) return false;
    var response =
        ServerResponse.fromJson(serverException.parsedResponse!.response);
    List<int> statusCodes =
        response.errors?.map((e) => e.status ?? -1).toList() ?? [];
    return statusCodes.contains(statusCode);
  }
}
