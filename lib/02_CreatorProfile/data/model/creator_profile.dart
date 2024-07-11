import 'package:freezed_annotation/freezed_annotation.dart';

part 'creator_profile.freezed.dart';

part 'creator_profile.g.dart';

@freezed
class CreatorProfile with _$CreatorProfile {
  const factory CreatorProfile({
    required String imageUrl,
    required String name,
    required String address,
    required bool isFollow,
  }) = _CreatorProfile;

  factory CreatorProfile.fromJson(Map<String, Object?> json) =>
      _$CreatorProfileFromJson(json);
}
