// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  List<TodoEntity> get todos => throw _privateConstructorUsedError;
  TodoEntity? get selectedTodo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {List<TodoEntity> todos,
      TodoEntity? selectedTodo,
      bool isLoading,
      bool error,
      bool success});

  $TodoEntityCopyWith<$Res>? get selectedTodo;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? selectedTodo = freezed,
    Object? isLoading = null,
    Object? error = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
      selectedTodo: freezed == selectedTodo
          ? _value.selectedTodo
          : selectedTodo // ignore: cast_nullable_to_non_nullable
              as TodoEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res>? get selectedTodo {
    if (_value.selectedTodo == null) {
      return null;
    }

    return $TodoEntityCopyWith<$Res>(_value.selectedTodo!, (value) {
      return _then(_value.copyWith(selectedTodo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TodoEntity> todos,
      TodoEntity? selectedTodo,
      bool isLoading,
      bool error,
      bool success});

  @override
  $TodoEntityCopyWith<$Res>? get selectedTodo;
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? selectedTodo = freezed,
    Object? isLoading = null,
    Object? error = null,
    Object? success = null,
  }) {
    return _then(_$_TodoState(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
      selectedTodo: freezed == selectedTodo
          ? _value.selectedTodo
          : selectedTodo // ignore: cast_nullable_to_non_nullable
              as TodoEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  _$_TodoState(
      {final List<TodoEntity> todos = const [],
      this.selectedTodo = null,
      this.isLoading = false,
      this.error = false,
      this.success = false})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  @JsonKey()
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @JsonKey()
  final TodoEntity? selectedTodo;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'TodoState(todos: $todos, selectedTodo: $selectedTodo, isLoading: $isLoading, error: $error, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.selectedTodo, selectedTodo) ||
                other.selectedTodo == selectedTodo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      selectedTodo,
      isLoading,
      error,
      success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  factory _TodoState(
      {final List<TodoEntity> todos,
      final TodoEntity? selectedTodo,
      final bool isLoading,
      final bool error,
      final bool success}) = _$_TodoState;

  @override
  List<TodoEntity> get todos;
  @override
  TodoEntity? get selectedTodo;
  @override
  bool get isLoading;
  @override
  bool get error;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
