// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:note_app/Cubits/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit() : super(HomeViewInitial());

  void fetchAllNotes() {
    try {
      emit(
        HomeViewSuccess(
          notes: Hive.box<NoteModel>(kNotesBoxName).values.toList(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(HomeViewFailure(errorMessage: e.toString()));
    }
  }
}
