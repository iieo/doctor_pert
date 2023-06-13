// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  String get author => throw _privateConstructorUsedError;
  set author(String value) => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  set content(String value) => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  set rating(double value) => throw _privateConstructorUsedError;
  List<String>? get likes => throw _privateConstructorUsedError;
  set likes(List<String>? value) => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  set created(DateTime value) => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  set updated(DateTime value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {String author,
      String content,
      double rating,
      List<String>? likes,
      DateTime created,
      DateTime updated});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? rating = null,
    Object? likes = freezed,
    Object? created = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      String content,
      double rating,
      List<String>? likes,
      DateTime created,
      DateTime updated});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$_Rating>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? rating = null,
    Object? likes = freezed,
    Object? created = null,
    Object? updated = null,
  }) {
    return _then(_$_Rating(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  _$_Rating(
      {required this.author,
      required this.content,
      required this.rating,
      this.likes,
      required this.created,
      required this.updated});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  String author;
  @override
  String content;
  @override
  double rating;
  @override
  List<String>? likes;
  @override
  DateTime created;
  @override
  DateTime updated;

  @override
  String toString() {
    return 'Rating(author: $author, content: $content, rating: $rating, likes: $likes, created: $created, updated: $updated)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  factory _Rating(
      {required String author,
      required String content,
      required double rating,
      List<String>? likes,
      required DateTime created,
      required DateTime updated}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  String get author;
  set author(String value);
  @override
  String get content;
  set content(String value);
  @override
  double get rating;
  set rating(double value);
  @override
  List<String>? get likes;
  set likes(List<String>? value);
  @override
  DateTime get created;
  set created(DateTime value);
  @override
  DateTime get updated;
  set updated(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}
