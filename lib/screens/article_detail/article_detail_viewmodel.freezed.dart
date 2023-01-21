// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_detail_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleDetailScreenState {
  ZennArticle get article => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleDetailScreenStateCopyWith<ArticleDetailScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDetailScreenStateCopyWith<$Res> {
  factory $ArticleDetailScreenStateCopyWith(ArticleDetailScreenState value,
          $Res Function(ArticleDetailScreenState) then) =
      _$ArticleDetailScreenStateCopyWithImpl<$Res, ArticleDetailScreenState>;
  @useResult
  $Res call({ZennArticle article});

  $ZennArticleCopyWith<$Res> get article;
}

/// @nodoc
class _$ArticleDetailScreenStateCopyWithImpl<$Res,
        $Val extends ArticleDetailScreenState>
    implements $ArticleDetailScreenStateCopyWith<$Res> {
  _$ArticleDetailScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_value.copyWith(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ZennArticle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZennArticleCopyWith<$Res> get article {
    return $ZennArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleDetailScreenStateCopyWith<$Res>
    implements $ArticleDetailScreenStateCopyWith<$Res> {
  factory _$$_ArticleDetailScreenStateCopyWith(
          _$_ArticleDetailScreenState value,
          $Res Function(_$_ArticleDetailScreenState) then) =
      __$$_ArticleDetailScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ZennArticle article});

  @override
  $ZennArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$$_ArticleDetailScreenStateCopyWithImpl<$Res>
    extends _$ArticleDetailScreenStateCopyWithImpl<$Res,
        _$_ArticleDetailScreenState>
    implements _$$_ArticleDetailScreenStateCopyWith<$Res> {
  __$$_ArticleDetailScreenStateCopyWithImpl(_$_ArticleDetailScreenState _value,
      $Res Function(_$_ArticleDetailScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$_ArticleDetailScreenState(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ZennArticle,
    ));
  }
}

/// @nodoc

class _$_ArticleDetailScreenState implements _ArticleDetailScreenState {
  const _$_ArticleDetailScreenState({required this.article});

  @override
  final ZennArticle article;

  @override
  String toString() {
    return 'ArticleDetailScreenState(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleDetailScreenState &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleDetailScreenStateCopyWith<_$_ArticleDetailScreenState>
      get copyWith => __$$_ArticleDetailScreenStateCopyWithImpl<
          _$_ArticleDetailScreenState>(this, _$identity);
}

abstract class _ArticleDetailScreenState implements ArticleDetailScreenState {
  const factory _ArticleDetailScreenState(
      {required final ZennArticle article}) = _$_ArticleDetailScreenState;

  @override
  ZennArticle get article;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleDetailScreenStateCopyWith<_$_ArticleDetailScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
