// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatorProfileImpl _$$CreatorProfileImplFromJson(Map<String, dynamic> json) =>
    _$CreatorProfileImpl(
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      isFollow: json['isFollow'] as bool,
    );

Map<String, dynamic> _$$CreatorProfileImplToJson(
        _$CreatorProfileImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'address': instance.address,
      'isFollow': instance.isFollow,
    };
