// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:note_app/Cubits/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteInitial());
  var notesBox = Hive.box<NoteModel>(kNotesBoxName);
  //add note to hive box
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
