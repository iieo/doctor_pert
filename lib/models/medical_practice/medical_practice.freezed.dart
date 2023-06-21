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
  @JsonKey(includeFromJson: true, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: true, includeToJson: false)
  set id(String? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<Person>? get owner => throw _privateConstructorUsedError;
  set owner(List<Person>? value) => throw _privateConstructorUsedError;
  DoctorType get type => throw _privateConstructorUsedError;
  set type(DoctorType value) => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  set address(Address? value) => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  set phone(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  set website(String? value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String? value) => throw _privateConstructorUsedError;
  List<String> get employeeIds => throw _privateConstructorUsedError;
  set employeeIds(List<String> value) => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  set languages(List<String>? value) => throw _privateConstructorUsedError;
  OpeningHours? get openingHours => throw _privateConstructorUsedError;
  set openingHours(OpeningHours? value) => throw _privateConstructorUsedError;
  List<Rating> get ratings => throw _privateConstructorUsedError;
  set ratings(List<Rating> value) => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  set lat(double value) => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  set lon(double value) => throw _privateConstructorUsedError;
  List<String>? get services => throw _privateConstructorUsedError;
  set services(List<String>? value) => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  set isVerified(bool value) => throw _privateConstructorUsedError;
  bool? get isWheelchairAccessible => throw _privateConstructorUsedError;
  set isWheelchairAccessible(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Employee>? get employees => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set employees(List<Employee>? value) => throw _privateConstructorUsedError;

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
      {@JsonKey(includeFromJson: true, includeToJson: false)
          String? id,
      String name,
      List<Person>? owner,
      DoctorType type,
      Address? address,
      String? phone,
      String? email,
      String? website,
      String? description,
      String? imageUrl,
      List<String> employeeIds,
      List<String>? languages,
      OpeningHours? openingHours,
      List<Rating> ratings,
      double lat,
      double lon,
      List<String>? services,
      bool isVerified,
      bool? isWheelchairAccessible,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<Employee>? employees});

  $AddressCopyWith<$Res>? get address;
  $OpeningHoursCopyWith<$Res>? get openingHours;
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
    Object? id = freezed,
    Object? name = null,
    Object? owner = freezed,
    Object? type = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? employeeIds = null,
    Object? languages = freezed,
    Object? openingHours = freezed,
    Object? ratings = null,
    Object? lat = null,
    Object? lon = null,
    Object? services = freezed,
    Object? isVerified = null,
    Object? isWheelchairAccessible = freezed,
    Object? employees = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DoctorType,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
      employeeIds: null == employeeIds
          ? _value.employeeIds
          : employeeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isWheelchairAccessible: freezed == isWheelchairAccessible
          ? _value.isWheelchairAccessible
          : isWheelchairAccessible // ignore: cast_nullable_to_non_nullable
              as bool?,
      employees: freezed == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $OpeningHoursCopyWith<$Res>(_value.openingHours!, (value) {
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
      {@JsonKey(includeFromJson: true, includeToJson: false)
          String? id,
      String name,
      List<Person>? owner,
      DoctorType type,
      Address? address,
      String? phone,
      String? email,
      String? website,
      String? description,
      String? imageUrl,
      List<String> employeeIds,
      List<String>? languages,
      OpeningHours? openingHours,
      List<Rating> ratings,
      double lat,
      double lon,
      List<String>? services,
      bool isVerified,
      bool? isWheelchairAccessible,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<Employee>? employees});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $OpeningHoursCopyWith<$Res>? get openingHours;
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
    Object? id = freezed,
    Object? name = null,
    Object? owner = freezed,
    Object? type = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? employeeIds = null,
    Object? languages = freezed,
    Object? openingHours = freezed,
    Object? ratings = null,
    Object? lat = null,
    Object? lon = null,
    Object? services = freezed,
    Object? isVerified = null,
    Object? isWheelchairAccessible = freezed,
    Object? employees = freezed,
  }) {
    return _then(_$_MedicalPractice(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DoctorType,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
      employeeIds: null == employeeIds
          ? _value.employeeIds
          : employeeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isWheelchairAccessible: freezed == isWheelchairAccessible
          ? _value.isWheelchairAccessible
          : isWheelchairAccessible // ignore: cast_nullable_to_non_nullable
              as bool?,
      employees: freezed == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalPractice extends _MedicalPractice {
  _$_MedicalPractice(
      {@JsonKey(includeFromJson: true, includeToJson: false) this.id,
      required this.name,
      this.owner,
      required this.type,
      this.address,
      this.phone,
      this.email,
      this.website,
      this.description,
      this.imageUrl,
      required this.employeeIds,
      this.languages,
      this.openingHours,
      required this.ratings,
      required this.lat,
      required this.lon,
      this.services,
      required this.isVerified,
      this.isWheelchairAccessible,
      @JsonKey(includeFromJson: false, includeToJson: false) this.employees})
      : super._();

  factory _$_MedicalPractice.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalPracticeFromJson(json);

  @override
  @JsonKey(includeFromJson: true, includeToJson: false)
  String? id;
  @override
  String name;
  @override
  List<Person>? owner;
  @override
  DoctorType type;
  @override
  Address? address;
  @override
  String? phone;
  @override
  String? email;
  @override
  String? website;
  @override
  String? description;
  @override
  String? imageUrl;
  @override
  List<String> employeeIds;
  @override
  List<String>? languages;
  @override
  OpeningHours? openingHours;
  @override
  List<Rating> ratings;
  @override
  double lat;
  @override
  double lon;
  @override
  List<String>? services;
  @override
  bool isVerified;
  @override
  bool? isWheelchairAccessible;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Employee>? employees;

  @override
  String toString() {
    return 'MedicalPractice(id: $id, name: $name, owner: $owner, type: $type, address: $address, phone: $phone, email: $email, website: $website, description: $description, imageUrl: $imageUrl, employeeIds: $employeeIds, languages: $languages, openingHours: $openingHours, ratings: $ratings, lat: $lat, lon: $lon, services: $services, isVerified: $isVerified, isWheelchairAccessible: $isWheelchairAccessible, employees: $employees)';
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

abstract class _MedicalPractice extends MedicalPractice {
  factory _MedicalPractice(
      {@JsonKey(includeFromJson: true, includeToJson: false)
          String? id,
      required String name,
      List<Person>? owner,
      required DoctorType type,
      Address? address,
      String? phone,
      String? email,
      String? website,
      String? description,
      String? imageUrl,
      required List<String> employeeIds,
      List<String>? languages,
      OpeningHours? openingHours,
      required List<Rating> ratings,
      required double lat,
      required double lon,
      List<String>? services,
      required bool isVerified,
      bool? isWheelchairAccessible,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<Employee>? employees}) = _$_MedicalPractice;
  _MedicalPractice._() : super._();

  factory _MedicalPractice.fromJson(Map<String, dynamic> json) =
      _$_MedicalPractice.fromJson;

  @override
  @JsonKey(includeFromJson: true, includeToJson: false)
  String? get id;
  @JsonKey(includeFromJson: true, includeToJson: false)
  set id(String? value);
  @override
  String get name;
  set name(String value);
  @override
  List<Person>? get owner;
  set owner(List<Person>? value);
  @override
  DoctorType get type;
  set type(DoctorType value);
  @override
  Address? get address;
  set address(Address? value);
  @override
  String? get phone;
  set phone(String? value);
  @override
  String? get email;
  set email(String? value);
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
  List<String> get employeeIds;
  set employeeIds(List<String> value);
  @override
  List<String>? get languages;
  set languages(List<String>? value);
  @override
  OpeningHours? get openingHours;
  set openingHours(OpeningHours? value);
  @override
  List<Rating> get ratings;
  set ratings(List<Rating> value);
  @override
  double get lat;
  set lat(double value);
  @override
  double get lon;
  set lon(double value);
  @override
  List<String>? get services;
  set services(List<String>? value);
  @override
  bool get isVerified;
  set isVerified(bool value);
  @override
  bool? get isWheelchairAccessible;
  set isWheelchairAccessible(bool? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Employee>? get employees;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set employees(List<Employee>? value);
  @override
  @JsonKey(ignore: true)
  _$$_MedicalPracticeCopyWith<_$_MedicalPractice> get copyWith =>
      throw _privateConstructorUsedError;
}
