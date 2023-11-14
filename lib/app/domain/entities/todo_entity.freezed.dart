// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEntity {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  DateTime get deadlineAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoEntityCopyWith<TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEntityCopyWith<$Res> {
  factory $TodoEntityCopyWith(
          TodoEntity value, $Res Function(TodoEntity) then) =
      _$TodoEntityCopyWithImpl<$Res, TodoEntity>;
  @useResult
  $Res call(
      {String uid,
      String title,
      bool isDone,
      DateTime deadlineAt,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$TodoEntityCopyWithImpl<$Res, $Val extends TodoEntity>
    implements $TodoEntityCopyWith<$Res> {
  _$TodoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? isDone = null,
    Object? deadlineAt = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      deadlineAt: null == deadlineAt
          ? _value.deadlineAt
          : deadlineAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoEntityCopyWith<$Res>
    implements $TodoEntityCopyWith<$Res> {
  factory _$$_TodoEntityCopyWith(
          _$_TodoEntity value, $Res Function(_$_TodoEntity) then) =
      __$$_TodoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String title,
      bool isDone,
      DateTime deadlineAt,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_TodoEntityCopyWithImpl<$Res>
    extends _$TodoEntityCopyWithImpl<$Res, _$_TodoEntity>
    implements _$$_TodoEntityCopyWith<$Res> {
  __$$_TodoEntityCopyWithImpl(
      _$_TodoEntity _value, $Res Function(_$_TodoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? isDone = null,
    Object? deadlineAt = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_TodoEntity(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      deadlineAt: null == deadlineAt
          ? _value.deadlineAt
          : deadlineAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_TodoEntity implements _TodoEntity {
  _$_TodoEntity(
      {required this.uid,
      required this.title,
      required this.isDone,
      required this.deadlineAt,
      required this.createdAt,
      required this.modificatedAt});

  @override
  final String uid;
  @override
  final String title;
  @override
  final bool isDone;
  @override
  final DateTime deadlineAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'TodoEntity(uid: $uid, title: $title, isDone: $isDone, deadlineAt: $deadlineAt, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoEntity &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.deadlineAt, deadlineAt) ||
                other.deadlineAt == deadlineAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uid, title, isDone, deadlineAt, createdAt, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoEntityCopyWith<_$_TodoEntity> get copyWith =>
      __$$_TodoEntityCopyWithImpl<_$_TodoEntity>(this, _$identity);
}

abstract class _TodoEntity implements TodoEntity {
  factory _TodoEntity(
      {required final String uid,
      required final String title,
      required final bool isDone,
      required final DateTime deadlineAt,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_TodoEntity;

  @override
  String get uid;
  @override
  String get title;
  @override
  bool get isDone;
  @override
  DateTime get deadlineAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TodoEntityCopyWith<_$_TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
