import 'package:flutter/material.dart';
import 'package:note_app/Cubits/notes_list_cubit/notes_list_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget_view/custom_app_bar_widget.dart';
import 'package:note_app/views/widget_view/custom_text_form_field_widegt.dart';
import 'package:provider/provider.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CustomAppBarWidget(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                Provider.of<NotesListCubit>(
                  context,
                  listen: false,
                ).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 30),
            CustomTextFormFieldWidegt(
              initValue: widget.note.title,
              hint: 'Enter a new title',
              label: 'New Title',
              onChaged: (value) {
                if (value.isNotEmpty) {
                  title = value;
                }
              },
            ),
            const SizedBox(height: 30),
            CustomTextFormFieldWidegt(
              initValue: widget.note.content,
              label: 'New Content',
              hint: 'Enter a new content',
              maxLines: 5,
              onChaged: (value) {
                if (value.isNotEmpty) {
                  content = value;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
