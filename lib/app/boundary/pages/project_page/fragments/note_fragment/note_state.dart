import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/note_entity.dart';

part 'note_state.freezed.dart';

@freezed
class NoteState with _$NoteState {
  factory NoteState({
    @Default([]) List<NoteEntity> notes,
    @Default(null) NoteEntity? selectedNote,
    @Default(false) bool isLoading,
  }) = _NoteState;
}
