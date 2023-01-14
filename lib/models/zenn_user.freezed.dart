// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zenn_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZennUser _$ZennUserFromJson(Map<String, dynamic> json) {
  return _ZennUser.fromJson(json);
}

/// @nodoc
mixin _$ZennUser {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get avatarSmallUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZennUserCopyWith<ZennUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZennUserCopyWith<$Res> {
  factory $ZennUserCopyWith(ZennUser value, $Res Function(ZennUser) then) =
      _$ZennUserCopyWithImpl<$Res, ZennUser>;
  @useResult
  $Res call({int id, String username, String avatarSmallUrl});
}

/// @nodoc
class _$ZennUserCopyWithImpl<$Res, $Val extends ZennUser>
    implements $ZennUserCopyWith<$Res> {
  _$ZennUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatarSmallUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarSmallUrl: null == avatarSmallUrl
          ? _value.avatarSmallUrl
          : avatarSmallUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZennUserCopyWith<$Res> implements $ZennUserCopyWith<$Res> {
  factory _$$_ZennUserCopyWith(
          _$_ZennUser value, $Res Function(_$_ZennUser) then) =
      __$$_ZennUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, String avatarSmallUrl});
}

/// @nodoc
class __$$_ZennUserCopyWithImpl<$Res>
    extends _$ZennUserCopyWithImpl<$Res, _$_ZennUser>
    implements _$$_ZennUserCopyWith<$Res> {
  __$$_ZennUserCopyWithImpl(
      _$_ZennUser _value, $Res Function(_$_ZennUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatarSmallUrl = null,
  }) {
    return _then(_$_ZennUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarSmallUrl: null == avatarSmallUrl
          ? _value.avatarSmallUrl
          : avatarSmallUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZennUser implements _ZennUser {
  const _$_ZennUser(
      {required this.id, required this.username, required this.avatarSmallUrl});

  factory _$_ZennUser.fromJson(Map<String, dynamic> json) =>
      _$$_ZennUserFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String avatarSmallUrl;

  @override
  String toString() {
    return 'ZennUser(id: $id, username: $username, avatarSmallUrl: $avatarSmallUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZennUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarSmallUrl, avatarSmallUrl) ||
                other.avatarSmallUrl == avatarSmallUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, avatarSmallUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZennUserCopyWith<_$_ZennUser> get copyWith =>
      __$$_ZennUserCopyWithImpl<_$_ZennUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZennUserToJson(
      this,
    );
  }
}

abstract class _ZennUser implements ZennUser {
  const factory _ZennUser(
      {required final int id,
      required final String username,
      required final String avatarSmallUrl}) = _$_ZennUser;

  factory _ZennUser.fromJson(Map<String, dynamic> json) = _$_ZennUser.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get avatarSmallUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ZennUserCopyWith<_$_ZennUser> get copyWith =>
      throw _privateConstructorUsedError;
}
