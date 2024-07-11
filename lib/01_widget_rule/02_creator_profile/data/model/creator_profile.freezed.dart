// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatorProfile _$CreatorProfileFromJson(Map<String, dynamic> json) {
  return _CreatorProfile.fromJson(json);
}

/// @nodoc
mixin _$CreatorProfile {
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get isFollow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorProfileCopyWith<CreatorProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorProfileCopyWith<$Res> {
  factory $CreatorProfileCopyWith(
          CreatorProfile value, $Res Function(CreatorProfile) then) =
      _$CreatorProfileCopyWithImpl<$Res, CreatorProfile>;
  @useResult
  $Res call({String imageUrl, String name, String address, bool isFollow});
}

/// @nodoc
class _$CreatorProfileCopyWithImpl<$Res, $Val extends CreatorProfile>
    implements $CreatorProfileCopyWith<$Res> {
  _$CreatorProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
    Object? address = null,
    Object? isFollow = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatorProfileImplCopyWith<$Res>
    implements $CreatorProfileCopyWith<$Res> {
  factory _$$CreatorProfileImplCopyWith(_$CreatorProfileImpl value,
          $Res Function(_$CreatorProfileImpl) then) =
      __$$CreatorProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String name, String address, bool isFollow});
}

/// @nodoc
class __$$CreatorProfileImplCopyWithImpl<$Res>
    extends _$CreatorProfileCopyWithImpl<$Res, _$CreatorProfileImpl>
    implements _$$CreatorProfileImplCopyWith<$Res> {
  __$$CreatorProfileImplCopyWithImpl(
      _$CreatorProfileImpl _value, $Res Function(_$CreatorProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
    Object? address = null,
    Object? isFollow = null,
  }) {
    return _then(_$CreatorProfileImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatorProfileImpl implements _CreatorProfile {
  const _$CreatorProfileImpl(
      {required this.imageUrl,
      required this.name,
      required this.address,
      required this.isFollow});

  factory _$CreatorProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatorProfileImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String address;
  @override
  final bool isFollow;

  @override
  String toString() {
    return 'CreatorProfile(imageUrl: $imageUrl, name: $name, address: $address, isFollow: $isFollow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatorProfileImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isFollow, isFollow) ||
                other.isFollow == isFollow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, name, address, isFollow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatorProfileImplCopyWith<_$CreatorProfileImpl> get copyWith =>
      __$$CreatorProfileImplCopyWithImpl<_$CreatorProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatorProfileImplToJson(
      this,
    );
  }
}

abstract class _CreatorProfile implements CreatorProfile {
  const factory _CreatorProfile(
      {required final String imageUrl,
      required final String name,
      required final String address,
      required final bool isFollow}) = _$CreatorProfileImpl;

  factory _CreatorProfile.fromJson(Map<String, dynamic> json) =
      _$CreatorProfileImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get name;
  @override
  String get address;
  @override
  bool get isFollow;
  @override
  @JsonKey(ignore: true)
  _$$CreatorProfileImplCopyWith<_$CreatorProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
