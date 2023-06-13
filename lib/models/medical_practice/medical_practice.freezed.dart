// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_practice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalPractice _$MedicalPracticeFromJson(Map<String, dynamic> json) {
  return _MedicalPractice.fromJson(json);
}

/// @nodoc
mixin _$MedicalPractice {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<Person> get owner => throw _privateConstructorUsedError;
  set owner(List<Person> value) => throw _privateConstructorUsedError;
  List<DoctorType> get type => throw _privateConstructorUsedError;
  set type(List<DoctorType> value) => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  set address(Address value) => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  set phone(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  set website(String? value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String? value) => throw _privateConstructorUsedError;
  List<String> get languages => throw _privateConstructorUsedError;
  set languages(List<String> value) => throw _privateConstructorUsedError;
  List<Employee> get employees => throw _privateConstructorUsedError;
  set employees(List<Employee> value) => throw _privateConstructorUsedError;
  OpeningHours get openingHours => throw _privateConstructorUsedError;
  set openingHours(OpeningHours value) => throw _privateConstructorUsedError;
  List<Rating> get ratings => throw _privateConstructorUsedError;
  set ratings(List<Rating> value) => throw _privateConstructorUsedError;
  List<LatLng> get locations => throw _privateConstructorUsedError;
  set locations(List<LatLng> value) => throw _privateConstructorUsedError;
  List<String> get services => throw _privateConstructorUsedError;
  set services(List<String> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalPracticeCopyWith<MedicalPractice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalPracticeCopyWith<$Res> {
  factory $MedicalPracticeCopyWith(
          MedicalPractice value, $Res Function(MedicalPractice) then) =
      _$MedicalPracticeCopyWithImpl<$Res, MedicalPractice>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<Person> owner,
      List<DoctorType> type,
      Address address,
      String phone,
      String email,
      String? website,
      String? description,
      String? imageUrl,
      List<String> languages,
      List<Employee> employees,
      OpeningHours openingHours,
      List<Rating> ratings,
      List<LatLng> locations,
      List<String> services});

  $AddressCopyWith<$Res> get address;
  $OpeningHoursCopyWith<$Res> get openingHours;
}

/// @nodoc
class _$MedicalPracticeCopyWithImpl<$Res, $Val extends MedicalPractice>
    implements $MedicalPracticeCopyWith<$Res> {
  _$MedicalPracticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? type = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
    Object? website = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? languages = null,
    Object? employees = null,
    Object? openingHours = null,
    Object? ratings = null,
    Object? locations = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<DoctorType>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursCopyWith<$Res> get openingHours {
    return $OpeningHoursCopyWith<$Res>(_value.openingHours, (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MedicalPracticeCopyWith<$Res>
    implements $MedicalPracticeCopyWith<$Res> {
  factory _$$_MedicalPracticeCopyWith(
          _$_MedicalPractice value, $Res Function(_$_MedicalPractice) then) =
      __$$_MedicalPracticeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<Person> owner,
      List<DoctorType> type,
      Address address,
      String phone,
      String email,
      String? website,
      String? description,
      String? imageUrl,
      List<String> languages,
      List<Employee> employees,
      OpeningHours openingHours,
      List<Rating> ratings,
      List<LatLng> locations,
      List<String> services});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $OpeningHoursCopyWith<$Res> get openingHours;
}

/// @nodoc
class __$$_MedicalPracticeCopyWithImpl<$Res>
    extends _$MedicalPracticeCopyWithImpl<$Res, _$_MedicalPractice>
    implements _$$_MedicalPracticeCopyWith<$Res> {
  __$$_MedicalPracticeCopyWithImpl(
      _$_MedicalPractice _value, $Res Function(_$_MedicalPractice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? type = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
    Object? website = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? languages = null,
    Object? employees = null,
    Object? openingHours = null,
    Object? ratings = null,
    Object? locations = null,
    Object? services = null,
  }) {
    return _then(_$_MedicalPractice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<DoctorType>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalPractice implements _MedicalPractice {
  _$_MedicalPractice(
      {required this.id,
      required this.name,
      required this.owner,
      required this.type,
      required this.address,
      required this.phone,
      required this.email,
      required this.website,
      required this.description,
      required this.imageUrl,
      required this.languages,
      required this.employees,
      required this.openingHours,
      required this.ratings,
      required this.locations,
      required this.services});

  factory _$_MedicalPractice.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalPracticeFromJson(json);

  @override
  String id;
  @override
  String name;
  @override
  List<Person> owner;
  @override
  List<DoctorType> type;
  @override
  Address address;
  @override
  String phone;
  @override
  String email;
  @override
  String? website;
  @override
  String? description;
  @override
  String? imageUrl;
  @override
  List<String> languages;
  @override
  List<Employee> employees;
  @override
  OpeningHours openingHours;
  @override
  List<Rating> ratings;
  @override
  List<LatLng> locations;
  @override
  List<String> services;

  @override
  String toString() {
    return 'MedicalPractice(id: $id, name: $name, owner: $owner, type: $type, address: $address, phone: $phone, email: $email, website: $website, description: $description, imageUrl: $imageUrl, languages: $languages, employees: $employees, openingHours: $openingHours, ratings: $ratings, locations: $locations, services: $services)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicalPracticeCopyWith<_$_MedicalPractice> get copyWith =>
      __$$_MedicalPracticeCopyWithImpl<_$_MedicalPractice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalPracticeToJson(
      this,
    );
  }
}

abstract class _MedicalPractice implements MedicalPractice {
  factory _MedicalPractice(
      {required String id,
      required String name,
      required List<Person> owner,
      required List<DoctorType> type,
      required Address address,
      required String phone,
      required String email,
      required String? website,
      required String? description,
      required String? imageUrl,
      required List<String> languages,
      required List<Employee> employees,
      required OpeningHours openingHours,
      required List<Rating> ratings,
      required List<LatLng> locations,
      required List<String> services}) = _$_MedicalPractice;

  factory _MedicalPractice.fromJson(Map<String, dynamic> json) =
      _$_MedicalPractice.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  List<Person> get owner;
  set owner(List<Person> value);
  @override
  List<DoctorType> get type;
  set type(List<DoctorType> value);
  @override
  Address get address;
  set address(Address value);
  @override
  String get phone;
  set phone(String value);
  @override
  String get email;
  set email(String value);
  @override
  String? get website;
  set website(String? value);
  @override
  String? get description;
  set description(String? value);
  @override
  String? get imageUrl;
  set imageUrl(String? value);
  @override
  List<String> get languages;
  set languages(List<String> value);
  @override
  List<Employee> get employees;
  set employees(List<Employee> value);
  @override
  OpeningHours get openingHours;
  set openingHours(OpeningHours value);
  @override
  List<Rating> get ratings;
  set ratings(List<Rating> value);
  @override
  List<LatLng> get locations;
  set locations(List<LatLng> value);
  @override
  List<String> get services;
  set services(List<String> value);
  @override
  @JsonKey(ignore: true)
  _$$_MedicalPracticeCopyWith<_$_MedicalPractice> get copyWith =>
      throw _privateConstructorUsedError;
}
