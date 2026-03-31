import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/notes_list_cubit/notes_list_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget_view/note_item.dart';
import 'package:provider/provider.dart';

class NotesListViewWidget extends StatelessWidget {
  const NotesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<NoteModel> notesList = Provider.of<NotesListCubit>(context).notesList;
    return BlocBuilder<NotesListCubit, NotesListState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: notesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: NoteItem(note: notesList[index]),
            );
          },
        );
      },
    );
  }
}
