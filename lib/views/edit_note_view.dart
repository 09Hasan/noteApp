import 'package:flutter/material.dart';
import 'package:note_app/views/widget_view/custom_text_form_field_widegt.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 100),
            CustomTextFormFieldWidegt(
              hint: 'Enter your note title',
              label: 'Title',
            ),
            SizedBox(height: 30),
            CustomTextFormFieldWidegt(
              label: 'Content',
              hint: 'Enter your note content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
