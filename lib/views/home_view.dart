import 'package:flutter/material.dart';
import 'package:note_app/views/add_note_view.dart';
import 'package:note_app/views/widget_view/home_view_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add button 
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Icon(Icons.add, size: 48),

        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            context: context,
            builder: (context) {
              return AddNoteView();
            },
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: HomeViewBodyWidget(),
      ),
    );
  }
}
