// ignore: depend_on_referenced_packages

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteInitial());
  //add note to hive box
  void addNote(NoteModel note) async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBoxName);

      emit(AddNoteLoading());
      await notesBox.add(note);
      // debugPrint(Hive.box<NoteModel>(kNotesBoxName).values.length.toString());
      emit(AddNoteSuccess());
    } catch (e) {
      debugPrint(e.toString());
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
