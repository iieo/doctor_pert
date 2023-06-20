import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@unfreezed
class Rating with _$Rating {
  factory Rating({
    required String author,
    required String content,
    required double rating,
    @Default([]) List<String> likes,
    required DateTime created,
    required DateTime updated,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
