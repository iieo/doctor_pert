// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
      userId: json['userId'] as String,
      email: json['email'] as String,
      person: Person.fromJson(json['person'] as Map<String, dynamic>),
      savedPersons: (json['savedPersons'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'person': instance.person,
      'savedPersons': instance.savedPersons,
    };
