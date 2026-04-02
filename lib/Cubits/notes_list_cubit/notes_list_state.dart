part of 'notes_list_cubit.dart';

@immutable
sealed class NotesListState {}

final class NotesListInitial extends NotesListState {}

final class NotesListChanged extends NotesListState {}
