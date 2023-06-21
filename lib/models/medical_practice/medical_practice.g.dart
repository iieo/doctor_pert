// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_practice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalPractice _$$_MedicalPracticeFromJson(Map<String, dynamic> json) =>
    _$_MedicalPractice(
      id: json['id'] as String?,
      name: json['name'] as String,
      owner: (json['owner'] as List<dynamic>?)
          ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$DoctorTypeEnumMap, json['type']),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      employeeIds: (json['employeeIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      openingHours: json['openingHours'] == null
          ? null
          : OpeningHours.fromJson(json['openingHours'] as Map<String, dynamic>),
      ratings: (json['ratings'] as List<dynamic>)
          .map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isVerified: json['isVerified'] as bool,
      isWheelchairAccessible: json['isWheelchairAccessible'] as bool?,
    );

Map<String, dynamic> _$$_MedicalPracticeToJson(_$_MedicalPractice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'type': _$DoctorTypeEnumMap[instance.type]!,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'employeeIds': instance.employeeIds,
      'languages': instance.languages,
      'openingHours': instance.openingHours,
      'ratings': instance.ratings,
      'lat': instance.lat,
      'lon': instance.lon,
      'services': instance.services,
      'isVerified': instance.isVerified,
      'isWheelchairAccessible': instance.isWheelchairAccessible,
    };

const _$DoctorTypeEnumMap = {
  DoctorType.general: 'general',
  DoctorType.hospital: 'hospital',
  DoctorType.clinic: 'clinic',
  DoctorType.pharmacy: 'pharmacy',
  DoctorType.nursing_home: 'nursing_home',
  DoctorType.chiropractor: 'chiropractor',
  DoctorType.dentist: 'dentist',
  DoctorType.dermatologist: 'dermatologist',
  DoctorType.dietitian: 'dietitian',
  DoctorType.gynecologist: 'gynecologist',
  DoctorType.neurologist: 'neurologist',
  DoctorType.ophthalmologist: 'ophthalmologist',
  DoctorType.orthopedist: 'orthopedist',
  DoctorType.pediatrician: 'pediatrician',
  DoctorType.psychiatrist: 'psychiatrist',
  DoctorType.urologist: 'urologist',
  DoctorType.veterinarian: 'veterinarian',
  DoctorType.other: 'other',
};
