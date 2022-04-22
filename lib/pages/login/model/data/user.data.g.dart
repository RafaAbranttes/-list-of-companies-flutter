// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      accessToken: json['access-token'] as String?,
      client: json['client'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'access-token': instance.accessToken,
      'client': instance.client,
      'uid': instance.uid,
    };
