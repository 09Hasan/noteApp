import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/addNoteCubit/add_note_cubit.dart';
import 'package:note_app/views/widget_view/note_add_form.dart';

class ModelBottomSheetWidegt extends StatelessWidget {
  const ModelBottomSheetWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        child: SingleChildScrollView(child: NoteAddForm()),
      ),
    );
  }
}
