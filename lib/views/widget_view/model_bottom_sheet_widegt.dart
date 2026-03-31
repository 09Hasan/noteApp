import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/addNoteViewCubit/add_note_view_cubit.dart';
import 'package:note_app/views/widget_view/note_add_form.dart';

class ModelBottomSheetWidegt extends StatelessWidget {
  const ModelBottomSheetWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteViewCubit(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        child: SingleChildScrollView(child: NoteAddForm()),
      ),
    );
  }
}
