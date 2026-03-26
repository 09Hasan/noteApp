import 'package:flutter/material.dart';
import 'package:note_app/views/widget_view/app_bar_widget.dart';
import 'package:note_app/views/widget_view/note_item.dart';

class HomeViewBodyWidget extends StatelessWidget {
  const HomeViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        // Expanded(child: ListView()),
        const SizedBox(height: 40),
        // app bar
        const AppBarWidget(),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: NoteItem(),
              );
            },
          ),
        ),
      ],
    );
 }
}
