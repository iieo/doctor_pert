// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_practice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalPractice _$$_MedicalPracticeFromJson(Map<String, dynamic> json) =>
    _$_MedicalPractice(
      id: json['id'] as String,
      name: json['name'] as String,
      owner: (json['owner'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>)
          .map((e) => $enumDecode(_$DoctorTypeEnumMap, e))
          .toList(),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      email: json['email'] as String,
      website: json['website'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      employeeIds: (json['employeeIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      languages:
          (json['languages'] as List<dynamic>).map((e) => e as String).toList(),
      openingHours:
          OpeningHours.fromJson(json['openingHours'] as Map<String, dynamic>),
      ratings: (json['ratings'] as List<dynamic>)
          .map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: LatLng.fromJson(json['location'] as Map<String, dynamic>),
      services:
          (json['services'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MedicalPracticeToJson(_$_MedicalPractice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'type': instance.type.map((e) => _$DoctorTypeEnumMap[e]!).toList(),
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
      'location': instance.location,
      'services': instance.services,
    };

const _$DoctorTypeEnumMap = {
  DoctorType.general: 'general',
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
