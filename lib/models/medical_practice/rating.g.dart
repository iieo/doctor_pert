// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      author: json['author'] as String,
      content: json['content'] as String,
      rating: (json['rating'] as num).toDouble(),
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'rating': instance.rating,
      'likes': instance.likes,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };
