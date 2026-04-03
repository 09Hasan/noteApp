import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Cubits/notes_list_cubit/notes_list_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:provider/provider.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    // var cubit = Provider.of<NotesListCubit>(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(note.color),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView(note: note);
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 42, color: Colors.black),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    Provider.of<NotesListCubit>(
                      context,
                      listen: false,
                    ).fetchAllNotes();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash.data,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    note.content,
                    style: TextStyle(fontSize: 24, color: Colors.black54),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Text(
                  note.date,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
