import 'package:flutter/material.dart';
import 'package:note_app/views/widget_view/app_bar_widget.dart';
import 'package:note_app/views/widget_view/model_bottom_sheet_widegt.dart';
import 'package:note_app/views/widget_view/note_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 32),

        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ModelBottomSheetWidegt();
            },
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
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
        ),
      ),
    );
  }
}
