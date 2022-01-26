// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesFailureTearOff {
  const _$CategoriesFailureTearOff();

  NoCategory noCategory() {
    return const NoCategory();
  }
}

/// @nodoc
const $CategoriesFailure = _$CategoriesFailureTearOff();

/// @nodoc
mixin _$CategoriesFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoCategory value) noCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoCategory value)? noCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoCategory value)? noCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesFailureCopyWith<$Res> {
  factory $CategoriesFailureCopyWith(
          CategoriesFailure value, $Res Function(CategoriesFailure) then) =
      _$CategoriesFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesFailureCopyWithImpl<$Res>
    implements $CategoriesFailureCopyWith<$Res> {
  _$CategoriesFailureCopyWithImpl(this._value, this._then);

  final CategoriesFailure _value;
  // ignore: unused_field
  final $Res Function(CategoriesFailure) _then;
}

/// @nodoc
abstract class $NoCategoryCopyWith<$Res> {
  factory $NoCategoryCopyWith(
          NoCategory value, $Res Function(NoCategory) then) =
      _$NoCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoCategoryCopyWithImpl<$Res>
    extends _$CategoriesFailureCopyWithImpl<$Res>
    implements $NoCategoryCopyWith<$Res> {
  _$NoCategoryCopyWithImpl(NoCategory _value, $Res Function(NoCategory) _then)
      : super(_value, (v) => _then(v as NoCategory));

  @override
  NoCategory get _value => super._value as NoCategory;
}

/// @nodoc

class _$NoCategory implements NoCategory {
  const _$NoCategory();

  @override
  String toString() {
    return 'CategoriesFailure.noCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCategory,
  }) {
    return noCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCategory,
  }) {
    return noCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCategory,
    required TResult orElse(),
  }) {
    if (noCategory != null) {
      return noCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoCategory value) noCategory,
  }) {
    return noCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoCategory value)? noCategory,
  }) {
    return noCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoCategory value)? noCategory,
    required TResult orElse(),
  }) {
    if (noCategory != null) {
      return noCategory(this);
    }
    return orElse();
  }
}

abstract class NoCategory implements CategoriesFailure {
  const factory NoCategory() = _$NoCategory;
}
