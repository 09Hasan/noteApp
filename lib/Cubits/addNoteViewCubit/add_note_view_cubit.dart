// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:note_app/Cubits/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteViewCubit extends Cubit<AddNoteCubitState> {
  AddNoteViewCubit() : super(AddNoteInitial());
  var notesBox = Hive.box<NoteModel>(kNotesBoxName);
  void addNote(NoteModel note) {
    try {
      emit(AddNoteLoading());
      notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      debugPrint(e.toString());
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
