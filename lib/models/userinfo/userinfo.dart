import 'package:doctor_pert/models/person/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userinfo.freezed.dart';
part 'userinfo.g.dart';

@unfreezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    required String userId,
    required String email,
    required Person person,
    required List<Person> savedPersons,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
