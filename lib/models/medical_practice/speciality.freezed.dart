// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speciality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Speciality _$SpecialityFromJson(Map<String, dynamic> json) {
  return _Speciality.fromJson(json);
}

/// @nodoc
mixin _$Speciality {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialityCopyWith<Speciality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityCopyWith<$Res> {
  factory $SpecialityCopyWith(
          Speciality value, $Res Function(Speciality) then) =
      _$SpecialityCopyWithImpl<$Res, Speciality>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$SpecialityCopyWithImpl<$Res, $Val extends Speciality>
    implements $SpecialityCopyWith<$Res> {
  _$SpecialityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpecialityCopyWith<$Res>
    implements $SpecialityCopyWith<$Res> {
  factory _$$_SpecialityCopyWith(
          _$_Speciality value, $Res Function(_$_Speciality) then) =
      __$$_SpecialityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_SpecialityCopyWithImpl<$Res>
    extends _$SpecialityCopyWithImpl<$Res, _$_Speciality>
    implements _$$_SpecialityCopyWith<$Res> {
  __$$_SpecialityCopyWithImpl(
      _$_Speciality _value, $Res Function(_$_Speciality) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_Speciality(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Speciality implements _Speciality {
  _$_Speciality({required this.name, required this.description});

  factory _$_Speciality.fromJson(Map<String, dynamic> json) =>
      _$$_SpecialityFromJson(json);

  @override
  String name;
  @override
  String description;

  @override
  String toString() {
    return 'Speciality(name: $name, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpecialityCopyWith<_$_Speciality> get copyWith =>
      __$$_SpecialityCopyWithImpl<_$_Speciality>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecialityToJson(
      this,
    );
  }
}

abstract class _Speciality implements Speciality {
  factory _Speciality({required String name, required String description}) =
      _$_Speciality;

  factory _Speciality.fromJson(Map<String, dynamic> json) =
      _$_Speciality.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  String get description;
  set description(String value);
  @override
  @JsonKey(ignore: true)
  _$$_SpecialityCopyWith<_$_Speciality> get copyWith =>
      throw _privateConstructorUsedError;
}
