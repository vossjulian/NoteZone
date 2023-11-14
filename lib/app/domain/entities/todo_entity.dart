import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';
//part 'profile_entity.g.dart';

@freezed
class TodoEntity with _$TodoEntity {
  factory TodoEntity({
    required String uid,
    required String title,
    required bool isDone,
    required DateTime deadlineAt,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _TodoEntity;
}
