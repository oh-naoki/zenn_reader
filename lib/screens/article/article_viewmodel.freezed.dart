// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleScreenState _$ArticleScreenStateFromJson(Map<String, dynamic> json) {
  return _ArticleScreenState.fromJson(json);
}

/// @nodoc
mixin _$ArticleScreenState {
  List<ZennArticle>? get articleList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleScreenStateCopyWith<ArticleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleScreenStateCopyWith<$Res> {
  factory $ArticleScreenStateCopyWith(
          ArticleScreenState value, $Res Function(ArticleScreenState) then) =
      _$ArticleScreenStateCopyWithImpl<$Res, ArticleScreenState>;
  @useResult
  $Res call({List<ZennArticle>? articleList});
}

/// @nodoc
class _$ArticleScreenStateCopyWithImpl<$Res, $Val extends ArticleScreenState>
    implements $ArticleScreenStateCopyWith<$Res> {
  _$ArticleScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleList = freezed,
  }) {
    return _then(_value.copyWith(
      articleList: freezed == articleList
          ? _value.articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<ZennArticle>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleScreenStateCopyWith<$Res>
    implements $ArticleScreenStateCopyWith<$Res> {
  factory _$$_ArticleScreenStateCopyWith(_$_ArticleScreenState value,
          $Res Function(_$_ArticleScreenState) then) =
      __$$_ArticleScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ZennArticle>? articleList});
}

/// @nodoc
class __$$_ArticleScreenStateCopyWithImpl<$Res>
    extends _$ArticleScreenStateCopyWithImpl<$Res, _$_ArticleScreenState>
    implements _$$_ArticleScreenStateCopyWith<$Res> {
  __$$_ArticleScreenStateCopyWithImpl(
      _$_ArticleScreenState _value, $Res Function(_$_ArticleScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleList = freezed,
  }) {
    return _then(_$_ArticleScreenState(
      articleList: freezed == articleList
          ? _value._articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<ZennArticle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleScreenState implements _ArticleScreenState {
  const _$_ArticleScreenState({final List<ZennArticle>? articleList = null})
      : _articleList = articleList;

  factory _$_ArticleScreenState.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleScreenStateFromJson(json);

  final List<ZennArticle>? _articleList;
  @override
  @JsonKey()
  List<ZennArticle>? get articleList {
    final value = _articleList;
    if (value == null) return null;
    if (_articleList is EqualUnmodifiableListView) return _articleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArticleScreenState(articleList: $articleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleScreenState &&
            const DeepCollectionEquality()
                .equals(other._articleList, _articleList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_articleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleScreenStateCopyWith<_$_ArticleScreenState> get copyWith =>
      __$$_ArticleScreenStateCopyWithImpl<_$_ArticleScreenState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleScreenStateToJson(
      this,
    );
  }
}

abstract class _ArticleScreenState implements ArticleScreenState {
  const factory _ArticleScreenState({final List<ZennArticle>? articleList}) =
      _$_ArticleScreenState;

  factory _ArticleScreenState.fromJson(Map<String, dynamic> json) =
      _$_ArticleScreenState.fromJson;

  @override
  List<ZennArticle>? get articleList;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleScreenStateCopyWith<_$_ArticleScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
