// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerResponse _$ServerResponseFromJson(Map<String, dynamic> json) =>
    ServerResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ServerError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServerResponseToJson(ServerResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };

ServerError _$ServerErrorFromJson(Map<String, dynamic> json) => ServerError(
      message: json['message'] as String?,
      status: json['status'] as int?,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServerErrorToJson(ServerError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'locations': instance.locations,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      line: json['line'] as int?,
      column: json['column'] as int?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'line': instance.line,
      'column': instance.column,
    };
