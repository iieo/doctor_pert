import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@unfreezed
class Address with _$Address {
  factory Address({
    required String street,
    required String city,
    required String state,
    required String country,
    required String postalCode,
  }) = _Address;

  Address._();

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  String get fullAddress {
    return "$street, $postalCode $city, $country";
  }
}
