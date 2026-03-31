import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/home_view_cubit/home_view_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:note_app/Cubits/addNoteViewCubit/add_note_view_cubit.dart';
import 'package:note_app/views/widget_view/home_view_body_widget.dart';
import 'package:note_app/views/widget_view/model_bottom_sheet_widegt.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeViewCubit(),
      child: Scaffold(
        // add button
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          shape: RoundedSuperellipseBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Icon(Icons.add, size: 48),

          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              context: context,
              builder: (context) {
                return const ModelBottomSheetWidegt();
              },
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: HomeViewBodyWidget(),
        ),
      ),
    );
  }
}
