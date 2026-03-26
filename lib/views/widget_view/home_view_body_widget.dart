import 'package:flutter/material.dart';
import 'package:note_app/views/widget_view/custom_app_bar_widget.dart';
import 'package:note_app/views/widget_view/note_item.dart';
import 'package:note_app/views/widget_view/notes_list_view_widget.dart';

class HomeViewBodyWidget extends StatelessWidget {
  const HomeViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Expanded(child: ListView()),
        const SizedBox(height: 40),
        // app bar
        const CustomAppBarWidget(title: 'Note App', icon: Icons.search),
        const SizedBox(height: 20),
        Expanded(child: NotesListViewWidget()),
      ],
    );
  }
}
