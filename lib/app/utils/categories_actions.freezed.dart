// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesActionsTearOff {
  const _$CategoriesActionsTearOff();

  _TaskAdded taskAdded() {
    return const _TaskAdded();
  }

  _CategoryEdited categoryEdited() {
    return const _CategoryEdited();
  }

  _CategoryDeleted categoryDeleted() {
    return const _CategoryDeleted();
  }

  _TaskChecked taskChecked(String title) {
    return _TaskChecked(
      title,
    );
  }

  _TaskUnchecked taskUnchecked(String title) {
    return _TaskUnchecked(
      title,
    );
  }

  _TaskDeleted taskDeleted(String title) {
    return _TaskDeleted(
      title,
    );
  }

  _TaskAddedToFavorites taskAddedToFavorites(String title) {
    return _TaskAddedToFavorites(
      title,
    );
  }

  _TaskRemovedFromFavorites taskRemovedFromFavorites(String title) {
    return _TaskRemovedFromFavorites(
      title,
    );
  }
}

/// @nodoc
const $CategoriesActions = _$CategoriesActionsTearOff();

/// @nodoc
mixin _$CategoriesActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesActionsCopyWith<$Res> {
  factory $CategoriesActionsCopyWith(
          CategoriesActions value, $Res Function(CategoriesActions) then) =
      _$CategoriesActionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesActionsCopyWithImpl<$Res>
    implements $CategoriesActionsCopyWith<$Res> {
  _$CategoriesActionsCopyWithImpl(this._value, this._then);

  final CategoriesActions _value;
  // ignore: unused_field
  final $Res Function(CategoriesActions) _then;
}

/// @nodoc
abstract class _$TaskAddedCopyWith<$Res> {
  factory _$TaskAddedCopyWith(
          _TaskAdded value, $Res Function(_TaskAdded) then) =
      __$TaskAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TaskAddedCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$TaskAddedCopyWith<$Res> {
  __$TaskAddedCopyWithImpl(_TaskAdded _value, $Res Function(_TaskAdded) _then)
      : super(_value, (v) => _then(v as _TaskAdded));

  @override
  _TaskAdded get _value => super._value as _TaskAdded;
}

/// @nodoc

class _$_TaskAdded implements _TaskAdded {
  const _$_TaskAdded();

  @override
  String toString() {
    return 'CategoriesActions.taskAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TaskAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return taskAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return taskAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return taskAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return taskAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded(this);
    }
    return orElse();
  }
}

abstract class _TaskAdded implements CategoriesActions {
  const factory _TaskAdded() = _$_TaskAdded;
}

/// @nodoc
abstract class _$CategoryEditedCopyWith<$Res> {
  factory _$CategoryEditedCopyWith(
          _CategoryEdited value, $Res Function(_CategoryEdited) then) =
      __$CategoryEditedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryEditedCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$CategoryEditedCopyWith<$Res> {
  __$CategoryEditedCopyWithImpl(
      _CategoryEdited _value, $Res Function(_CategoryEdited) _then)
      : super(_value, (v) => _then(v as _CategoryEdited));

  @override
  _CategoryEdited get _value => super._value as _CategoryEdited;
}

/// @nodoc

class _$_CategoryEdited implements _CategoryEdited {
  const _$_CategoryEdited();

  @override
  String toString() {
    return 'CategoriesActions.categoryEdited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CategoryEdited);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return categoryEdited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return categoryEdited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (categoryEdited != null) {
      return categoryEdited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return categoryEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return categoryEdited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (categoryEdited != null) {
      return categoryEdited(this);
    }
    return orElse();
  }
}

abstract class _CategoryEdited implements CategoriesActions {
  const factory _CategoryEdited() = _$_CategoryEdited;
}

/// @nodoc
abstract class _$CategoryDeletedCopyWith<$Res> {
  factory _$CategoryDeletedCopyWith(
          _CategoryDeleted value, $Res Function(_CategoryDeleted) then) =
      __$CategoryDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryDeletedCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$CategoryDeletedCopyWith<$Res> {
  __$CategoryDeletedCopyWithImpl(
      _CategoryDeleted _value, $Res Function(_CategoryDeleted) _then)
      : super(_value, (v) => _then(v as _CategoryDeleted));

  @override
  _CategoryDeleted get _value => super._value as _CategoryDeleted;
}

/// @nodoc

class _$_CategoryDeleted implements _CategoryDeleted {
  const _$_CategoryDeleted();

  @override
  String toString() {
    return 'CategoriesActions.categoryDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CategoryDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return categoryDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return categoryDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (categoryDeleted != null) {
      return categoryDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return categoryDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return categoryDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (categoryDeleted != null) {
      return categoryDeleted(this);
    }
    return orElse();
  }
}

abstract class _CategoryDeleted implements CategoriesActions {
  const factory _CategoryDeleted() = _$_CategoryDeleted;
}

/// @nodoc
abstract class _$TaskCheckedCopyWith<$Res> {
  factory _$TaskCheckedCopyWith(
          _TaskChecked value, $Res Function(_TaskChecked) then) =
      __$TaskCheckedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TaskCheckedCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$TaskCheckedCopyWith<$Res> {
  __$TaskCheckedCopyWithImpl(
      _TaskChecked _value, $Res Function(_TaskChecked) _then)
      : super(_value, (v) => _then(v as _TaskChecked));

  @override
  _TaskChecked get _value => super._value as _TaskChecked;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TaskChecked(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskChecked implements _TaskChecked {
  const _$_TaskChecked(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CategoriesActions.taskChecked(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskChecked &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$TaskCheckedCopyWith<_TaskChecked> get copyWith =>
      __$TaskCheckedCopyWithImpl<_TaskChecked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return taskChecked(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return taskChecked?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskChecked != null) {
      return taskChecked(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return taskChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return taskChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskChecked != null) {
      return taskChecked(this);
    }
    return orElse();
  }
}

abstract class _TaskChecked implements CategoriesActions {
  const factory _TaskChecked(String title) = _$_TaskChecked;

  String get title;
  @JsonKey(ignore: true)
  _$TaskCheckedCopyWith<_TaskChecked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TaskUncheckedCopyWith<$Res> {
  factory _$TaskUncheckedCopyWith(
          _TaskUnchecked value, $Res Function(_TaskUnchecked) then) =
      __$TaskUncheckedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TaskUncheckedCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$TaskUncheckedCopyWith<$Res> {
  __$TaskUncheckedCopyWithImpl(
      _TaskUnchecked _value, $Res Function(_TaskUnchecked) _then)
      : super(_value, (v) => _then(v as _TaskUnchecked));

  @override
  _TaskUnchecked get _value => super._value as _TaskUnchecked;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TaskUnchecked(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskUnchecked implements _TaskUnchecked {
  const _$_TaskUnchecked(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CategoriesActions.taskUnchecked(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskUnchecked &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$TaskUncheckedCopyWith<_TaskUnchecked> get copyWith =>
      __$TaskUncheckedCopyWithImpl<_TaskUnchecked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return taskUnchecked(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return taskUnchecked?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskUnchecked != null) {
      return taskUnchecked(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return taskUnchecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return taskUnchecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskUnchecked != null) {
      return taskUnchecked(this);
    }
    return orElse();
  }
}

abstract class _TaskUnchecked implements CategoriesActions {
  const factory _TaskUnchecked(String title) = _$_TaskUnchecked;

  String get title;
  @JsonKey(ignore: true)
  _$TaskUncheckedCopyWith<_TaskUnchecked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TaskDeletedCopyWith<$Res> {
  factory _$TaskDeletedCopyWith(
          _TaskDeleted value, $Res Function(_TaskDeleted) then) =
      __$TaskDeletedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TaskDeletedCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$TaskDeletedCopyWith<$Res> {
  __$TaskDeletedCopyWithImpl(
      _TaskDeleted _value, $Res Function(_TaskDeleted) _then)
      : super(_value, (v) => _then(v as _TaskDeleted));

  @override
  _TaskDeleted get _value => super._value as _TaskDeleted;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TaskDeleted(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskDeleted implements _TaskDeleted {
  const _$_TaskDeleted(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CategoriesActions.taskDeleted(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDeleted &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$TaskDeletedCopyWith<_TaskDeleted> get copyWith =>
      __$TaskDeletedCopyWithImpl<_TaskDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return taskDeleted(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return taskDeleted?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskDeleted != null) {
      return taskDeleted(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return taskDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return taskDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskDeleted != null) {
      return taskDeleted(this);
    }
    return orElse();
  }
}

abstract class _TaskDeleted implements CategoriesActions {
  const factory _TaskDeleted(String title) = _$_TaskDeleted;

  String get title;
  @JsonKey(ignore: true)
  _$TaskDeletedCopyWith<_TaskDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TaskAddedToFavoritesCopyWith<$Res> {
  factory _$TaskAddedToFavoritesCopyWith(_TaskAddedToFavorites value,
          $Res Function(_TaskAddedToFavorites) then) =
      __$TaskAddedToFavoritesCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TaskAddedToFavoritesCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$TaskAddedToFavoritesCopyWith<$Res> {
  __$TaskAddedToFavoritesCopyWithImpl(
      _TaskAddedToFavorites _value, $Res Function(_TaskAddedToFavorites) _then)
      : super(_value, (v) => _then(v as _TaskAddedToFavorites));

  @override
  _TaskAddedToFavorites get _value => super._value as _TaskAddedToFavorites;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TaskAddedToFavorites(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskAddedToFavorites implements _TaskAddedToFavorites {
  const _$_TaskAddedToFavorites(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CategoriesActions.taskAddedToFavorites(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskAddedToFavorites &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$TaskAddedToFavoritesCopyWith<_TaskAddedToFavorites> get copyWith =>
      __$TaskAddedToFavoritesCopyWithImpl<_TaskAddedToFavorites>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return taskAddedToFavorites(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return taskAddedToFavorites?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskAddedToFavorites != null) {
      return taskAddedToFavorites(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return taskAddedToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return taskAddedToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskAddedToFavorites != null) {
      return taskAddedToFavorites(this);
    }
    return orElse();
  }
}

abstract class _TaskAddedToFavorites implements CategoriesActions {
  const factory _TaskAddedToFavorites(String title) = _$_TaskAddedToFavorites;

  String get title;
  @JsonKey(ignore: true)
  _$TaskAddedToFavoritesCopyWith<_TaskAddedToFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TaskRemovedFromFavoritesCopyWith<$Res> {
  factory _$TaskRemovedFromFavoritesCopyWith(_TaskRemovedFromFavorites value,
          $Res Function(_TaskRemovedFromFavorites) then) =
      __$TaskRemovedFromFavoritesCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TaskRemovedFromFavoritesCopyWithImpl<$Res>
    extends _$CategoriesActionsCopyWithImpl<$Res>
    implements _$TaskRemovedFromFavoritesCopyWith<$Res> {
  __$TaskRemovedFromFavoritesCopyWithImpl(_TaskRemovedFromFavorites _value,
      $Res Function(_TaskRemovedFromFavorites) _then)
      : super(_value, (v) => _then(v as _TaskRemovedFromFavorites));

  @override
  _TaskRemovedFromFavorites get _value =>
      super._value as _TaskRemovedFromFavorites;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TaskRemovedFromFavorites(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskRemovedFromFavorites implements _TaskRemovedFromFavorites {
  const _$_TaskRemovedFromFavorites(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CategoriesActions.taskRemovedFromFavorites(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskRemovedFromFavorites &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$TaskRemovedFromFavoritesCopyWith<_TaskRemovedFromFavorites> get copyWith =>
      __$TaskRemovedFromFavoritesCopyWithImpl<_TaskRemovedFromFavorites>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() taskAdded,
    required TResult Function() categoryEdited,
    required TResult Function() categoryDeleted,
    required TResult Function(String title) taskChecked,
    required TResult Function(String title) taskUnchecked,
    required TResult Function(String title) taskDeleted,
    required TResult Function(String title) taskAddedToFavorites,
    required TResult Function(String title) taskRemovedFromFavorites,
  }) {
    return taskRemovedFromFavorites(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
  }) {
    return taskRemovedFromFavorites?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? taskAdded,
    TResult Function()? categoryEdited,
    TResult Function()? categoryDeleted,
    TResult Function(String title)? taskChecked,
    TResult Function(String title)? taskUnchecked,
    TResult Function(String title)? taskDeleted,
    TResult Function(String title)? taskAddedToFavorites,
    TResult Function(String title)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskRemovedFromFavorites != null) {
      return taskRemovedFromFavorites(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskAdded value) taskAdded,
    required TResult Function(_CategoryEdited value) categoryEdited,
    required TResult Function(_CategoryDeleted value) categoryDeleted,
    required TResult Function(_TaskChecked value) taskChecked,
    required TResult Function(_TaskUnchecked value) taskUnchecked,
    required TResult Function(_TaskDeleted value) taskDeleted,
    required TResult Function(_TaskAddedToFavorites value) taskAddedToFavorites,
    required TResult Function(_TaskRemovedFromFavorites value)
        taskRemovedFromFavorites,
  }) {
    return taskRemovedFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
  }) {
    return taskRemovedFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskAdded value)? taskAdded,
    TResult Function(_CategoryEdited value)? categoryEdited,
    TResult Function(_CategoryDeleted value)? categoryDeleted,
    TResult Function(_TaskChecked value)? taskChecked,
    TResult Function(_TaskUnchecked value)? taskUnchecked,
    TResult Function(_TaskDeleted value)? taskDeleted,
    TResult Function(_TaskAddedToFavorites value)? taskAddedToFavorites,
    TResult Function(_TaskRemovedFromFavorites value)? taskRemovedFromFavorites,
    required TResult orElse(),
  }) {
    if (taskRemovedFromFavorites != null) {
      return taskRemovedFromFavorites(this);
    }
    return orElse();
  }
}

abstract class _TaskRemovedFromFavorites implements CategoriesActions {
  const factory _TaskRemovedFromFavorites(String title) =
      _$_TaskRemovedFromFavorites;

  String get title;
  @JsonKey(ignore: true)
  _$TaskRemovedFromFavoritesCopyWith<_TaskRemovedFromFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}
