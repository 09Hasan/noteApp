import 'package:flutter/material.dart';
import 'package:note_app/views/widget_view/custom_button_widget.dart';
import 'package:note_app/views/widget_view/custom_text_form_field_widegt.dart';
import 'package:note_app/views/widget_view/note_add_form.dart';

class ModelBottomSheetWidegt extends StatelessWidget {
  const ModelBottomSheetWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: SingleChildScrollView(child: NoteAddForm()),
    );
  }
}

