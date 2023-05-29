part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
class NotesLoading extends NotesState {}
class NotesFailure extends NotesState {
    final String errMessage ;

  NotesFailure(this.errMessage);
}
