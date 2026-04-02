// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:note_app/Cubits/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_list_state.dart';

class NotesListCubit extends Cubit<NotesListState> {
  NotesListCubit() : super(NotesListInitial());
  List<NoteModel> notesList = Hive.box<NoteModel>(
    kNotesBoxName,
  ).values.toList();
  void fetchAllNotes() {
    notesList = Hive.box<NoteModel>(kNotesBoxName).values.toList();
    emit(NotesListChanged());
  }

  // void deleteNote(int index) {
  //   Hive.box<NoteModel>(kNotesBoxName).deleteAt(index);
  // }
}
