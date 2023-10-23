import 'package:json_annotation/json_annotation.dart';

part 'server_response.g.dart';

@JsonSerializable()
class ServerResponse {
  ServerResponse({this.errors});

  List<ServerError>? errors;

  factory ServerResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServerResponseToJson(this);
}

@JsonSerializable()
class ServerError {
  ServerError({this.message, this.status, this.locations});

  String? message;
  int? status;
  List<Location>? locations;

  factory ServerError.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ServerErrorToJson(this);
}

@JsonSerializable()
class Location {
  Location({this.line, this.column});

  int? line;
  int? column;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
