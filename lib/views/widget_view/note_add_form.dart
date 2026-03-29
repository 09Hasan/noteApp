import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/addNoteViewCubit/add_note_view_cubit.dart';
import 'package:note_app/views/widget_view/custom_button_widget.dart';
import 'package:note_app/views/widget_view/custom_text_form_field_widegt.dart';

class NoteAddForm extends StatefulWidget {
  const NoteAddForm({super.key});

  @override
  State<NoteAddForm> createState() => _NoteAddFormState();
}

class _NoteAddFormState extends State<NoteAddForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? content;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomTextFormFieldWidegt(
            hint: 'Enter your note title',
            label: 'Title',
            onSaved: (value) {
              title = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter title';
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          CustomTextFormFieldWidegt(
            onSaved: (value) {
              content = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some content';
              }
              return null;
            },
            label: 'Content',
            hint: 'Enter your note content',
            maxLines: 5,
          ),
          const SizedBox(height: 30),
          // Spacer(),
          CustomButtonWidget(
            // Process the form data
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                BlocProvider.of<AddNoteViewCubit>(
                  context,
                ).addNote(title: title, content: content);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
