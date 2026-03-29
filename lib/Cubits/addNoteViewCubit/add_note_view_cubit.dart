// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'add_note_cubit_state.dart';

class AddNoteViewCubit extends Cubit<AddNoteCubitState> {
  AddNoteViewCubit() : super(AddNoteCubitInitial());
  void addNote({String? title, String? content}) {}
}
